create table [Users](
	[Id] uniqueidentifier primary key default(NEWID()),
	[Username] nvarchar(100) unique not null,
	[Password] nvarchar(500) not null
)

create table [Profiles](
	[Id] uniqueidentifier primary key default(NEWID()),
	[UserId] uniqueidentifier foreign key references [Users]([Id]),
	[RegisteredAt] datetime not null default(GETUTCDATE()),
	[Birthday] date not null,
	[Bio] nvarchar(max)
)

create table [Shouts](
	[Id] uniqueidentifier primary key default(NEWID()),
	[ByUserId] uniqueidentifier foreign key references [Users]([Id]),
	[ToProfileId] uniqueidentifier foreign key references [Profiles]([Id]),
	[ShoutedAt] datetime not null default(GETUTCDATE()),
	[Text] nvarchar(max)
)

create table [Friends](
	[InitiaterId] uniqueidentifier foreign key references [Users]([Id]),
	[FriendId] uniqueidentifier foreign key references [Users]([Id]),
	[FriendedAt] datetime not null default(GETUTCDATE()),
	[Unfriended] bit not null default(0),
)