# 删除ApolloConfigDB中的数据

set @appId = 'tjs_public';
 
Use `ApolloConfigDB`;
 
update `App` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `AppNamespace` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `Cluster` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `Commit` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `GrayReleaseRule` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `Release` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `ReleaseHistory` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
delete from `Instance` where `AppId` = @appId;
delete from `InstanceConfig` where `ConfigAppId` = @appId;
delete from `ReleaseMessage` where `Message` like CONCAT(@appId, '+%');
 
# handle namespaces and items
create temporary table `NamespaceIds` as select `Id` from `Namespace` where `AppId` = @appId and `IsDeleted` = 0;
update `Namespace` set `IsDeleted` = 1 where `Id` in (select `Id` from `NamespaceIds`);
update `Item` set `IsDeleted` = 1 where `NamespaceId` in (select `Id` from `NamespaceIds`);
delete from `NamespaceLock` where `NamespaceId` in (select `Id` from `NamespaceIds`);
drop temporary table `NamespaceIds`;


# 删除ApolloPortalDB中的数据

set @appId = 'tjs_public';
 
Use `ApolloPortalDB`;
 
update `App` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `AppNamespace` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
update `Favorite` set `IsDeleted` = 1 where `AppId` = @appId and `IsDeleted` = 0;
 
# handle roles and permissions
create temporary table `PermissionIds` as select `Id` from `Permission` where (`TargetId` = @appId or `TargetId` like CONCAT(@appId, '+%'))  and `IsDeleted` = 0;
update `Permission` set `IsDeleted` = 1 where `Id` in (select `Id` from `PermissionIds`);
update `RolePermission` set `IsDeleted` = 1 where `PermissionId` in (select `Id` from `PermissionIds`);
drop temporary table `PermissionIds`;
 
create temporary table `RoleIds` as select `Id` from `Role` where (`RoleName` = CONCAT('Master+', @appId) or `RoleName` like CONCAT('ModifyNamespace+', @appId, '+%') or `RoleName` like CONCAT('ReleaseNamespace+', @appId, '+%')) and `IsDeleted` = 0;
update `Role` set `IsDeleted` = 1 where `Id` in (select `Id` from `RoleIds`);
update `UserRole` set `IsDeleted` = 1 where `RoleId` in (select `Id` from `RoleIds`);
update `ConsumerRole` set `IsDeleted` = 1 where `RoleId` in (select `Id` from `RoleIds`);
drop temporary table `RoleIds`;