# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


CertSourceLink.delete_all
CertStoreRole.delete_all
CertStore.delete_all
Environment.delete_all
IdentityType.delete_all
MemberGroup.delete_all
Role.delete_all
SourceLink.delete_all
Source.delete_all
StoreAccess.delete_all
UserGroup.delete_all
UserSourceLink.delete_all
UserStoreRole.delete_all
UserStore.delete_all


Environment.create(EnvironmentName: 'Environment Sample 1', EnvironmentDescription: 'Environment Description Sample 1')
Environment.create(EnvironmentName: 'Environment Sample 2', EnvironmentDescription: 'Environment Description Sample 2')
Environment.create(EnvironmentName: 'Environment Sample 3', EnvironmentDescription: 'Environment Description Sample 3')
Environment.create(EnvironmentName: 'Environment Sample 4', EnvironmentDescription: 'Environment Description Sample 4')
Environment.create(EnvironmentName: 'Environment Sample 5', EnvironmentDescription: 'Environment Description Sample 5')

IdentityType.create(IdentityTypeName: 'Identity Type Sample 1', IdentityTypeDescription: 'Identity Type Description Sample 1')
IdentityType.create(IdentityTypeName: 'Identity Type Sample 2', IdentityTypeDescription: 'Identity Type Description Sample 2')
IdentityType.create(IdentityTypeName: 'Identity Type Sample 3', IdentityTypeDescription: 'Identity Type Description Sample 3')
IdentityType.create(IdentityTypeName: 'Identity Type Sample 4', IdentityTypeDescription: 'Identity Type Description Sample 4')
IdentityType.create(IdentityTypeName: 'Identity Type Sample 5', IdentityTypeDescription: 'Identity Type Description Sample 5')

Source.create(SourceDescription: 'Source Description Sample 1')
Source.create(SourceDescription: 'Source Description Sample 2')
Source.create(SourceDescription: 'Source Description Sample 3')
Source.create(SourceDescription: 'Source Description Sample 4')
Source.create(SourceDescription: 'Source Description Sample 5')

UserGroup.create({:id => 1, :UserGroupName => 'System'})
UserGroup.create({:id => 2, :UserGroupName => 'IT Support'})
UserGroup.create({:id => 3, :UserGroupName => 'System Manager'})


