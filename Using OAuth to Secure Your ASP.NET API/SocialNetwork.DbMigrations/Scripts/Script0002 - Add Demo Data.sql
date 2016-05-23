-- Passwords are 'password' salted with the email using SHA 512
insert into [Users]([Id], [Username], [Password]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', 'mail@filipekberg.se', 'XXMhnJzzRcHMbTW6X39tWlTPcK+CQIfnKy8jz+Zxb6xKqDqKXFvP9IUztTnyRusF7ENWFPTsV4SPUM38O3A/8Q==');

insert into [Users]([Id], [Username], [Password]) 
values('61bd209d-8cd2-4017-818f-7112b7c00769', 'anders.andersson@sweden.com', 'nk6aI/7fhHg61Xauj1qC9TEnScOLzjJnqHMlKkccW3gx1crfeEvRfYXR+fRTNQ8RsAVexarL5zBq0jvWXh9nAg==');

insert into [Users]([Id], [Username], [Password]) 
values('db07aa96-310d-448e-a6c6-b4cd386a22fe', 'dropbear@oz.com', 'Ib8jCInlTEeiZDTZ4U3J3mFn+Q24PReD4lT3T4Ek2ogxigJX9k/E3EXB4RVsFPmve6FOc2zEytb4WG3+bLYc0Q==');

insert into [Profiles]([Id], [UserId], [Birthday], [Bio]) 
values('5b59dc12-1136-4f13-8ff7-37a8b8e99bf2', 'e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '1987-01-29', 'Author of C# Smorgasbord. Speaker. Pluralsight author. Microsoft .NET MVP. Xamarin MVP. Works for @Invoice2Go. Swede living in Sydney!');

insert into [Profiles]([Id], [UserId], [Birthday], [Bio]) 
values('b796cf2d-f6cf-432b-b150-4cbb8fc56f8a', '61bd209d-8cd2-4017-818f-7112b7c00769', '1988-05-14', 'Building IKEA furniture!');

insert into [Profiles]([Id], [UserId], [Birthday], [Bio]) 
values('fcb0c12e-0268-46e2-aa16-a5ecaf00974b', 'db07aa96-310d-448e-a6c6-b4cd386a22fe', '1989-09-27', 'Avoiding Vegemite..');

-- Filip is friends with everyone, but unfriended the dropbear..
insert into [Friends]([InitiaterId], [FriendId]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '61bd209d-8cd2-4017-818f-7112b7c00769');

insert into [Friends]([InitiaterId], [FriendId]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '61bd209d-8cd2-4017-818f-7112b7c00769');

insert into [Friends]([InitiaterId], [FriendId], [Unfriended]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', 'db07aa96-310d-448e-a6c6-b4cd386a22fe', 1);

-- Anders is friends with everyone!
insert into [Friends]([InitiaterId], [FriendId]) 
values('61bd209d-8cd2-4017-818f-7112b7c00769', 'db07aa96-310d-448e-a6c6-b4cd386a22fe');

-- Filip Shouts to his own Profile
insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '5b59dc12-1136-4f13-8ff7-37a8b8e99bf2', 'Creating a Pluralsight course on OAuth!');

insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '5b59dc12-1136-4f13-8ff7-37a8b8e99bf2', 'About to start recording');

insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', '5b59dc12-1136-4f13-8ff7-37a8b8e99bf2', 'Demos are coming along well!');

-- Why did the dropbear unfriend Filip?
insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('e6f6fe01-7de0-4301-8a5d-6b49e1eec7f1', 'fcb0c12e-0268-46e2-aa16-a5ecaf00974b', 'Why did you unfriend me?');

-- Other Shouts
insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('61bd209d-8cd2-4017-818f-7112b7c00769', 'b796cf2d-f6cf-432b-b150-4cbb8fc56f8a', 'Where is that Alan Key..');

insert into [Shouts]([ByUserId], [ToProfileId], [Text]) 
values('db07aa96-310d-448e-a6c6-b4cd386a22fe', 'fcb0c12e-0268-46e2-aa16-a5ecaf00974b', 'Looking for Eucalyptus');