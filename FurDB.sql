create database FurDB

create table AttributeSet(
	ID int identity(1,1) not null primary key,
	Name nvarchar(100) not null
)

insert into AttributeSet values ('color')
insert into AttributeSet values ('material')

drop table AttributeValue
create table AttributeValue(
	ID int identity(1,1) not null primary key,
	AttributeSetID int foreign key references AttributeSet(ID) not null,
	Name nvarchar(20) not null
)

insert into AttributeValue values(1, 'Blue')
insert into AttributeValue values(1, 'Red')
insert into AttributeValue values(1, 'Dark')
insert into AttributeValue values(1, 'White')
insert into AttributeValue values(1, 'Yellow')
insert into AttributeValue values(2, 'Plastic')
insert into AttributeValue values(2, 'Fabric')
insert into AttributeValue values(2, 'Velvet')
insert into AttributeValue values(1, 'Oak')
insert into AttributeValue values(2, 'Oak')
insert into AttributeValue values(2, 'Birch')
insert into AttributeValue values(1, 'Pine')
insert into AttributeValue values(2, 'Pine')
insert into AttributeValue values(2, 'Metal')
insert into AttributeValue values(1, 'Sheesham')
insert into AttributeValue values(2, 'Sheesham')


drop table ProductAttribute
drop table Product

create table Product(
	ID int identity(1,1) primary key not null,
	CategoryID int foreign key references Category(ID),
	Name nvarchar(255) not null,
	Price float not null,
	Discount float not null,
	InStock int not null,
	OnOrder int not null,
	[Image] nvarchar(255) not null,
	ListImage text ,
	[Description] text not null,
	Rate float not null,
)
create table ProductAttribute(
	ProductID int not null,
	AttributeValueID int not null
	primary key (ProductID, AttributeValueID)
)

ALTER TABLE ProductAttribute
DROP CONSTRAINT FK__ProductAt__Produ__59063A47;

create table Category(
	ID int identity(1,1) primary key not null,
	CategoryName nvarchar(30) not null,
	CategoryImage nvarchar(255) not null
)

drop table OrderDetail
create table OrderDetail(
	OrderID int foreign key references [Order](ID),
	ProductID int foreign key references Product(ID),
	Quantity int not null,
	Price float not null,
	primary key (
		OrderID,
		ProductID
	)
)

create table [Order](
	ID int identity(1,1) not null primary key,
	Country nvarchar(12) not null,
	FirstName nvarchar(20) not null,
	LastName nvarchar(20) not null,
	[Address] nvarchar(100) not null,
	City nvarchar(30) not null,
	Email nvarchar(100) not null,
	Phone nvarchar(20) not null,
	Notes text,
	Payment nvarchar(20) not null,
	[Status] bit not null
)


------------------------------------SOFAS -------------------------------------------

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
1,
'Grey Fabric 2 Seater Highback Sofa - Isaac',
849.00,
25.0,
20,
0,
N'122970_1_2-seater-highback-sofa-isaac-power-shot.jpg',
N'[{"path": "122970_8_2-seater-highback-sofa-isaac-dimension.jpg"},
 {"path": "122970_2_isaac-2-seater-sofa-lifestyle.jpg"},
 {"path": "122970_4_2-seater-highback-sofa-isaac-front-view.jpg"},
 {"path": "122970_6_2-seater-highback-sofa-isaac-side-angle.jpg"}
]',
N'Chic and contemporary, the Isaac highback 2 seater sofa would enhance any living space.
Upholstered in appealing grey fabric, this sofa would complement any colour scheme and is sure to fit seamlessly into your décor.

The comfortable seat and back cushions invite you to sit back and relax at the end of the day and you will enjoy the added luxury of padded arms. You can look forward to spending quality time in your living room and the stylish design will lift the space. There’s a reversible scatter cushion for added interest and you can create a stunning suite with the matching pieces in the Isaac collection.

Featuring a comfy armchair and snuggler sofa, the Isaac collection offers fabulous choices for your home. Each piece benefits from a robust frame with a free 10-year guarantee and your room will boast the highest levels of comfort.

Ensuring that your living space is a special place to relax, the attractive Isaac highback sofa is an excellent choice.',
5
)
insert ProductAttribute values(
1, 3
)

insert ProductAttribute values(
1, 8
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
1,
'Grey Fabric Oak Leg Chair - Jefferson',
449.00,
20.0,
20,
0,
N'125143_1_grey-fabric-oak-leg-dining-chair-jefferson-power-shot.jpg',
N'[{"path": "125143_8_grey-fabric-oak-leg-dining-chair-jefferson-dimension.jpg"},
 {"path": "125143_4_grey-fabric-oak-leg-dining-chair-jefferson-front-view.jpg"},
 {"path": "125143_6_grey-fabric-oak-leg-dining-chair-jefferson-side-view.jpg"},
 {"path": "125143_2_jefferson-grey-fabric-armchair-lifestyle.jpg"}
]',
N'Bringing grandeur and elegance to your dining room, the stunning Jefferson chair is a statement piece for your home.


It isn’t hard to imagine the visual impact that the Jefferson dining chair would create. The elegant period styling reminiscent of the Queen Anne chair, sets this chair apart and it would be equally at home in a traditional or contemporary interior. Upholstered in chic grey fabric, the chair would suit most colour schemes and is completed by stud detail and attractive oak legs. The Jefferson could be partnered with any dining table of your choice to create a striking set which would transform your dining or living room.


Our furniture collections feature fabulous dining tables with something to suit every room. With a stylish table and your wonderful Jefferson chairs, you will have the perfect space for entertaining and one which offers the highest levels of comfort.


Elegant, refined and striking, the Jefferson chair is a special piece for your home that enables you to create a memorable room.',
5
)
insert ProductAttribute values(
2, 3
)
insert ProductAttribute values(
2, 8
)



insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
1,
'Grey Velvet Armchair - Majestic',
369.00,
10.0,
20,
0,
N'124691_1_grey-velvet-armchair-majestic-124691-power-shot.jpg',
N'[{"path": "124691_8_grey-velvet-armchair-majestic-dimension.jpg"},
 {"path": "124691_4_grey-velvet-armchair-majestic-124691-front-view.jpg"},
 {"path": "124691_3_grey-velvet-armchair-majestic-124691-feet.jpg"},
 {"path": "124691_2_grey-velvet-armchair-majestic-124691-armrest.jpg"}
]',
N'Elegant and sophisticated, the stunning Majestic armchair is appropriately named!

Upholstered in luxurious grey velvet, this chair boasts a sumptuous look which would grace the grandest room. A stylish take on a heritage design, the Majestic features tufted button detail to the sides and refined turned feet. Completed by stud detail to the arms, the chair combines elegance with comfort to create a memorable piece for your home. The perfect accent chair for any room, The Majestic armchair is a statement piece which would complement most colour schemes.

Benefiting from a robust frame with a free 10-year guarantee, this armchair is the discerning choice for your interior. Our furniture collections offer a wonderful array of striking pieces which enable you to complete every room and to create stunning looks in the process. Accent chairs are fabulous features for any space and the impressive Majestic armchair is no exception.

Luxurious, comfortable and refined, it could be the finishing touch which sets your chosen room apart.',
4
)
insert ProductAttribute values(
3, 9
)
insert ProductAttribute values(
3, 3
)




insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
1,
'Mustard Velvet Armchair - Stratus',
399.00,
10.0,
20,
0,
N'125397_1_yellow-velvet-armchair-stratus-125397-power-shot.jpg',
N'[{"path": "125397_8_yellow-velvet-armchair-stratus-dimension.jpg"},
 {"path": "125397_2_yellow-velvet-armchair-stratus.jpg"},
 {"path": "125397_4_yellow-velvet-armchair-stratus-125397-front-view.jpg"},
 {"path": "125397_6_yellow-velvet-armchair-stratus-125397-side-view.jpg"}
]',
N'Eye-catching and eminently cool, the impressive Stratus armchair would be a fabulous accent piece for your home.

Lending a splash of vibrant colour to your interior, this armchair boasts a warm, golden hue and the luxury of velvet upholstery. The sumptuous look is enhanced by button detail to the back and the on-trend retro look would complement a variety of decorative schemes.

Capturing the essence of 1950s design and yet feeling wonderfully contemporary, the Stratus is a stunning accent chair which is ideal for a living space, study or bedroom. You could also feature two or more of the chairs to create a striking seating arrangement for your interior.

It’s amazing how just a few strategically placed furnishings can transform any space. The Stratus would be an excellent choice for your home, but you will find a raft of unbelievable choices in our exciting furniture collections. There’s something to inject colour and style into all of your spaces and
there is no limit to the looks you can achieve.

Colourful, retro and right on trend, the Stratus velvet armchair offers a fabulous fusion of style and comfort.

Actual colours may vary. This is due to the fact that every computer monitor has a different capability to display colours and that everyone sees these colours differently. We always hope that our photos show the products as life-like as possible, but please understand the actual colour may vary slightly from your monitor. We cannot guarantee that the colour you see accurately portrays the true colour of the product. Customer discretion advised.',
4
)
insert ProductAttribute values(
4, 9
)
insert ProductAttribute values(
4, 5
)

--------------------------------------------------------------------------------------




----------------------------------- BEDROOM -----------------------------------------

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
2,
'Double (4 ft 6) Natural Oak Bed Frame - Cashel
',
599.00,
10.0,
20,
0,
N'110376_1_double-4-ft-6-natural-oak-bed-frame-cashel-powershot.jpg',
N'[{"path": "110376_8_double-4-ft-6-natural-oak-bed-frame-cashel-dimensions.jpg"},
 {"path": "110376_4_double-4-ft-6-natural-oak-bed-frame-cashel-side-view.jpg"},
 {"path": "110376_5_double-4-ft-6-natural-oak-bed-frame-cashel-slats-view.jpg"},
 {"path": "110376_6_double-4-ft-6-natural-oak-bed-frame-cashel-close-up-legs.jpg"}
]',
N'The timeless Cashel double bed frame will allow you to sleep in comfort and style. Lovingly crafted from solid oak, the bed frame features a natural grain with medium oak finish. A mission-style slatted headrest and footboard with smooth lines and moulded detail add a contemporary feel to this sturdy and durable bed. The sprung slatted base provides superior strength and comfort for the best night s sleep, with a central support bar ensuring a durable base for your mattress. This classic double bed frame will work with a variety of interior styles and colour schemes thanks to its natural look. Complete the look with other items from the stylish Cashel oak bedroom range, including chest of drawers and bedside locker. The Cashel bed frame is also available in 5ft(King) and 6ft(Super King) sizes.

This item is flatpacked and requires assembly before use. Mattress sold separately.',
4
)
insert ProductAttribute values(
5, 10
)
insert ProductAttribute values(
5, 11
)


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
2,
'Single (3 ft) Grey Bed Frame - Rivendale',
599.00,
10.0,
20,
0,
N'111789_1_single-3-ft-grey-bed-frame-rivendale-power-shot.jpg',
N'[{"path": "111789_8_rivendale-3ft-dimension.jpg"},
 {"path": "1111789_4_single-3-ft-grey-bed-frame-rivendale-front-view.jpg"},
 {"path": "111789_2_single-3-ft-grey-bed-frame-rivendale_37874.jpg"},
 {"path": "111789_5_single-3-ft-grey-bed-frame-rivendale-angle-shot.jpg"}
]',
N'The contemporary Rivendale bed will give a clean and modern look to your bedroom. Expertly crafted from solid birch, the single bed frame has a cotton white satin painted finish which will fit in with a wide variety of colour schemes. The frame has a mission-style, curving slatted headboard and a low footboard. It is equipped with a fully sprung base which profiles to your shape to provide the most comfortable and supportive foundation for your mattress. The Rivendale Bed Frame is available in single, double and king size, and you can complete the contemporary look with coordinating items from the Rivendale bedroom range. The soft colour of this single bed would make it ideal for a childs bedroom in particular. Mattresses are sold separately.

This item is flatpacked and requires assembly before use.',
3
)
insert ProductAttribute values(
6, 3
)
insert ProductAttribute values(
6, 12
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
2,
'Double (4 ft 6) Solid Dark Gloss Wood Bed Frame - Aisling',
399.00,
5.0,
20,
3,
N'119347_1_5ft-bedframe-aisling-power-shot.jpg',
N'[{"path": "119347_8_double-4-ft-6-solid-dark-gloss-wood-bed-frame-aisling-dimensions.jpg"},
 {"path": "119347_3_5ft-bedframe-aisling-close-up-slats.jpg"},
 {"path": "119347_7_5ft-bedframe-aisling-back-view.jpg"},
 {"path": "119347_5_5ft-bedframe-aisling-front-view.jpg"}
]',
N'The classic elegance of the Aisling bed frame will provide the perfect night is sleep. Expertly crafted from solid New Zealand pine, the bed is finished in a dark gloss which shows off the natural grain of the wood. It has a traditional style which will suit a variety of interior styles and colour schemes, though will match best with other dark furniture pieces. The robust, moulded legs provide stability, with a panelled detail on the low footboard. The high headboard gives this bed an imposing look, and will be offset beautifully by classic bed linens. A sprung slatted base provides durability and comfort to this sophisticated bed. Complete the look with the entire Aisling solid pine bedroom range, including blanket box,wardrobe and dresser.

This item is flatpacked and requires assembly before use.

Mattress sold separately.',
2
)
insert ProductAttribute values(
7, 13
)
insert ProductAttribute values(
7, 14
)


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
2,
'Day Bed - Eva',
249.00,
10.0,
20,
1,
N'120263_1_day-bed-eva-power-shot.jpg',
N'[{"path": "120263_9_day-bed-eva-dimensions.jpg"},
 {"path": "120263_3_day-bed-eva-grid.jpg"},
 {"path": "120263_7_day-bed-eva-side-view.jpg"},
 {"path": "120263_6_day-bed-eva-front-view.jpg"}
]',
N'Simple, elegant and able to turn any space into the most wonderful of guest rooms, the beautiful Eva Day Bed is great for anyone who wants to make the most of limited room within their home without having to compromise on style. A fabulously multi-purpose piece of furniture, the charming day bed can be used for seating during the day and yet is still a wonderfully comfortable place to sleep, making it ideal for accommodating extra or unexpected houseguests. Expertly and lovingly crafted, each Eva Day bed measures 204.3cm in width, 104.6cm in depth and 124cm in total height. Much of that height is accounted for by the day bed is main frame element that boasts an effortlessly elegant and ornate look which is matched by the side frames. The entirety of the day bed is then finished in clean, crisp white that produces a feeling of class and sophistication and which lends itself perfectly to any style of bedclothes that may be used to dress the mattress.',
5
)
insert ProductAttribute values(
8, 4
)
insert ProductAttribute values(
8, 15
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
2,
'Day Bed - Eva',
599.00,
10.0,
20,
1,
N'114510_1_5ft-bed-frame-jamie-power-shot.jpg',
N'[{"path": "114510_8_king-size-5-ft-grey-fabric-bed-frame-jamie-dimensions.jpg"},
 {"path": "114510_2_king-size-5-ft-grey-fabric-bed-frame-jamie_38250.jpg"},
 {"path": "114510_5_5ft-bed-frame-jamie-back-view.jpg"},
 {"path": "114510_4_5ft-bed-frame-jamie-front-view.jpg"}
]',
N'A restful sleep will be guaranteed with the gorgeous Jamie fabric bed frame. This sophisticated bed is constructed from a solid timber base and upholstered in luxurious deep grey fabric. The high headboard is thickly cushioned and features a stitched and tufted design for a contemporary feel. This design is mirrored on the footboard which slants outwards slightly. The slatted frame of the bed provides excellent support for your mattress, ensuring you have the very best sleeping experience. The dark colour of this bed frame will be offset beautifully by a set of classic bed linen and some vibrant cushions to add a fun element. This luxurious bed frame will be most suited to a classic or contemporary style of interior, and will look stunning when paired with neutral cream, white or pale grey walls. Add a touch of sparkle with our stunning Crystal range of mirrored bedroom furniture, including bedside locker and chest of drawers. Mattresses are sold separately, so why not check out our wide range of high quality mattresses to complete your purchase? The Jamie bed frame is available in 5ft and 6ft options, and is flat packed so will require assembly before use. We are happy to provide an assembly service at an additional cost; simply click this option when you are adding the Jamie bed frame to your shopping basket.',
5
)
insert ProductAttribute values(
9, 3
)
insert ProductAttribute values(
9, 8
)

---------------------------------------------------LIVINGROOM-----------------------------


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Day Bed - Eva',
249.00,
10.0,
20,
1,
N'120263_1_day-bed-eva-power-shot.jpg',
N'[{"path": "120263_9_day-bed-eva-dimensions.jpg"},
 {"path": "120263_3_day-bed-eva-grid.jpg"},
 {"path": "120263_7_day-bed-eva-side-view.jpg"},
 {"path": "120263_6_day-bed-eva-front-view.jpg"}
]',
N'Simple, elegant and able to turn any space into the most wonderful of guest rooms, the beautiful Eva Day Bed is great for anyone who wants to make the most of limited room within their home without having to compromise on style. A fabulously multi-purpose piece of furniture, the charming day bed can be used for seating during the day and yet is still a wonderfully comfortable place to sleep, making it ideal for accommodating extra or unexpected houseguests. Expertly and lovingly crafted, each Eva Day bed measures 204.3cm in width, 104.6cm in depth and 124cm in total height. Much of that height is accounted for by the day bed is main frame element that boasts an effortlessly elegant and ornate look which is matched by the side frames. The entirety of the day bed is then finished in clean, crisp white that produces a feeling of class and sophistication and which lends itself perfectly to any style of bedclothes that may be used to dress the mattress.',
5
)
insert ProductAttribute values(
10, 4
)
insert ProductAttribute values(
10, 15
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Rustic Sheesham Wood Coffee Table with Metal Hairpin Legs - Milo',
199.00,
10.0,
20,
2,
N'117392_1_2-drawer-rustic-sheesham-coffee-table-milo-powershot.jpg',
N'[{"path": "117392_10_milo-coffee-table-dimensions.jpg"},
 {"path": "117392_2_milo-coffee-table-lifestyle.jpg"},
 {"path": "117392_6_2-drawer-rustic-sheesham-coffee-table-milo-front-side-angle.jpg"},
 {"path": "117392_7_2-drawer-rustic-sheesham-coffee-table-milo-side-view-extended.jpg"}
]',
N'The Milo coffee table has a rustic appeal and will create a warm and inviting focal point for your living room. Crafted from sheesham wood, also known as Indian rosewood, this low-profile table has a weathered appearance, with the natural grain of the wood showing through the gloss finish. A shallow shelf and drawer on either side provide ample storage for books and magazines underneath the tabletop, supported by intriguing black metal hairpin legs. A coordinating square black metal handle opens the drawers with ease. The legs are supported on discrete rubber feet to prevent scratching and unwanted movement on the floor. This rustic-style coffee table will work with a variety of colour schemes, and is the perfect way to bring a more natural feel to your home. Complete the look with the matching Milo lamp table.

Some assembly required.',
5
)
insert ProductAttribute values(
11, 16
)
insert ProductAttribute values(
11, 17
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Two Door Two Shelf Oak TV Unit - Milton',
439.00,
10.0,
20,
0,
N'119185_1_tv-unit-milton-powershot.jpg',
N'[{"path": "119185_8_oak-tv-unit-milton-dimension.jpg"},
 {"path": "117392_2_milo-coffee-table-lifestyle.jpg"},
 {"path": "119185_6_tv-unit-milton-front-view-doors-open.jpg"},
 {"path": "119185_7_tv-unit-milton-side-view.jpg"}
]',
N'The contemporary design of the Milton TV unit will provide the ultimate setting for your television and entertainment essentials.

Crafted from solid oak, it has a natural oiled oak finish which showcases the beautiful natural grain of the wood. The wide surface can easily accommodate up to a 50" television. Two central open shelves are perfect for placing your satellite receiver box, DVD player, games console or Bluray player, and each shelf has a handy opening in the back, allowing you to feed cables through neatly and safely. On either side of the shelves are single door cabinets with inner shelving and contemporary cutout handles, ideal for storing away DVDs, games and other accessories. This unit has a completely flat back, allowing you to place it neatly against any wall. The clean lines and rounded edges give an air of Scandinavian design to this piece, ideal for a contemporary interior decor scheme.

Complete the look with other items from the Milton oak living room furniture range, including nesting tables, coffee table and display unit.',
5
)
insert ProductAttribute values(
12, 10
)
insert ProductAttribute values(
12, 11
)


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Three Drawer Ivory Desk With Hutch & Stool - Atlas',
449.00,
10.0,
20,
4,
N'115450_1_3-drawer-ivory-desk-with-hutch-stool-atlas-power-shot.jpg',
N'[{"path": "115450_9_3-drawer-ivory-desk-with-hutch-stool-atlas-dimension.jpg"},
 {"path": "115450_7_3-drawer-ivory-desk-with-hutch-stool-atlas-front-view.jpg"},
 {"path": "115450_6_3-drawer-ivory-desk-with-hutch-stool-atlas-legs.jpg"},
 {"path": "115450_5_3-drawer-ivory-desk-with-hutch-stool-atlas-drawer-open.jpg"}
]',
N'Timeless and stylish, the Atlas desk with hutch and stool brings chic design and practicality to your interior.
Carefully crafted from wonderful solid pine, the Atlas desk features an appealing ivory painted finish partnered with a gorgeous natural wood top completed by a dark, rich tone.

Three drawers enable you to tidy away files, stationery and accessories and boast metal runners for smooth and silent operation. The matching hutch provides two handy shelves for displaying books and files, keeping them within easy reach as you work.

The set is completed by a matching stool which can be tucked away under the desk to save space when you are busy elsewhere. The Atlas desk and hutch would be a useful addition to any bedroom and could also be utilised as a dresser.

If you love the look of this amazing set, do explore the other fabulous pieces in the Atlas collection. The chests, lockers, bedframes, wardrobe and blanket box creates a dream bedroom with a timeless look which would suit both period and contemporary homes. The pleasing two-tone design complements any colour scheme and so will fit seamlessly into your room.

Practical and yet eminently stylish, the Atlas desk and hutch helps you to make the most of the available space.',
5
)
insert ProductAttribute values(
13, 13
)
insert ProductAttribute values(
13, 14
)



insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Brown Leather and Mahogany Swivel Office Chair -Victoria',
749.00,
10.0,
20,
4,
N'110714_1_brown-swivel-office-chair-victoria-powershot.jpg',
N'[{"path": "110714_10_brown-leather-and-mahogany-swivel-office-chair-victoria-dimensions.jpg"},
 {"path": "110714_2_victoria-office-chair-and-henley-writing-desk-and-lauren-lamp.jpg"},
 {"path": "110714_1_brown-swivel-office-chair-victoria-side-angle-view.jpg"},
 {"path": "110714_3_brown-swivel-office-chair-victoria-back-view.jpg"}
]',
N'Oozing period charm and elegance, the Victoria swivel chair would be a striking addition to your office or study.
Fashioned from gorgeous solid mahogany and boasting a rich and warm hue, this outstanding swivel chair would be the perfect choice to team up with the stunning Victoria partners desk which you will also find in our collection. Together they create a stunning period look and a genuine sense of luxury. The swivel chair is upholstered in distressed brown leather which further enhances both the elegance of the piece and the antique feel.

A grand chair which will enable you to work or study in comfort, the Victoria features a pedestal with casters so you can move the chair easily in any direction. The stunning Victoria collection also includes beautiful solid mahogany occasional tables and desks, a drinks cabinet and a hat stand. You will be able to create a truly elegant office or study which will be an amazing place to work. An office or study must be a practical space but that doesn’t mean that it can’t look amazing too! With this fine furniture, you can produce a striking space to distinguish your home whilst including all the practical features you need. What more could you ask for?',
3
)
insert ProductAttribute values(
14, 13
)
insert ProductAttribute values(
14, 14
)

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
3,
'Star Framed Taupe Dining Chair - Academy',
1199.00,
20.0,
20,
11,
N'117247_1_3-seater-fabric-pillowback-sofa-stanford-angledshot.jpg',
N'[{"path": "117247_7_3-seater-fabric-pillowback-sofa-stanford-dimensions.jpg"},
 {"path": "117247_4_3-seater-fabric-pillowback-sofa-stanford-frontview.jpg"},
 {"path": "117247_5_3-seater-fabric-pillowback-sofa-stanford-sideshot.jpg"},
 {"path": "117247_2_3-seater-fabric-pillowback-sofa-stanford-closeup-arm.jpg"}
]',
N'The Stanford Sofa is individually handmade for each customer, 100% Irish, cozy, neutral coloured sofa from our Irish Achill Collection.  It features high quality floral fabric in Evita mocha/beige colour, dark wooden feet and it comes with 3 floral pillows and 2 striped pillows. Back cushions of this Sofa are fibre filled for durability while seat cushions are foam filled for extra comfort. All Cushion covers are removable for easy cleaning. All furniture in The Stanford Range come with 10 year frame guarantee.',
5
)
insert ProductAttribute values(
15, 3
)
insert ProductAttribute values(
15, 6
)

------------------------------------------------------------------------------------------


----------------------------------------------------DININGROOM-------------------------------------

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
4,
'Grey Faux Leather Barstool - Jasmine',
79.00,
5.0,
20,
10,
N'119344_7_grey-barstool-jasmine-angle-shot.jpg',
N'[{"path": "119344_10_grey-faux-leather-barstool-jasmine-dimension.jpg"},
 {"path": "119344_2_grey-faux-leather-barstool-jasmine_38684.jpg"},
 {"path": "119344_3_grey-barstool-jasmine-close-up-front.jpg"},
 {"path": "119344_4_grey-barstool-jasmine-close-up-seat.jpg"}
]',
N'Sleek and contemporary, the Jasmine grey barstool would be the perfect choice for your bar or breakfast bar. Providing exceptional comfort to partner the stylish design, this barstool quite simply has it all!

Featuring a gleaming chrome pedestal and footrest together with chic grey faux leather upholstery, this barstool would complement a variety of colour schemes. The chrome and faux leather arms provide a pleasing finishing touch. With a padded seat and curved back the barstool ensures that you are seated in comfort as you dine or imbibe and the Jasmine is height adjustable via the gas lift lever. Stylish and yet eminently practical, the barstool is easy to keep clean as any spills can be wiped away with ease. Imagine the gorgeous contemporary interior that you can create! With the stunning Jasmine barstools and your choice of stylish furnishings from our exciting range, your home will feature unique and striking spaces which will be the envy of all who see them.

Combining a chic modern design with comfort and practicality, the Jasmine barstool is an excellent investment which will considerably enhance both your home and your lifestyle.

This item requires minor assembly.',
3
)
insert ProductAttribute values(
16, 3
)
insert ProductAttribute values(
16, 15
)



insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
4,
'Grey Fabric Barstool with Weathered Oak Legs - Clara',
179.00,
5.0,
20,
9,
N'grey-fabric-barstool-clara-power-shot.jpg',
N'[{"path": "120858_9_grey-fabric-barstool-clara-dimensions.jpg"},
 {"path": "120858_2_grey-fabric-barstool-clara-lifestyle-shot.jpg"},
 {"path": "120858_5_grey-fabric-barstool-clara-front-view.jpg"},
 {"path": "120858_4_grey-fabric-barstool-clara-close-up-legs.jpg"}
]',
N'Elegant and refined, this barstool offers the perfect contemporary take on the grandeur of yesteryear!

The attractive Clara barstool features weathered oak legs with a pleasing natural finish. Upholstered in versatile grey fabric, the barstool would suit most styles of interior décor and complements a variety of colour schemes. The refined styling is completed by button detail to the back. The Clara is comfortable too, so you will always enjoy your time at the breakfast bar! Your guests are sure to be impressed with your choice of furniture and your chic home interior.

This stylish piece would certainly enhance your home and if you love the look then our collection also features matching dining chairs. In addition, you will discover a comprehensive range of fine dining tables and storage solutions to complete your rooms. Comfortable and elegant, the Clara barstool features a pleasing contemporary design with a nod to period style.',
3
)
insert ProductAttribute values(
17, 3
)
insert ProductAttribute values(
17, 8
)


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
4,
'Cream Faux Leather and Walnut Barstool - Java',
109.00,
5.0,
20,
5,
N'walnut-wood-cream-bar-stool-java-3.jpg',
N'[{"path": "cream-faux-leather-and-walnut-barstool-java_36342.jpg"},
 {"path": "walnut-wood-cream-bar-stool-java-4.jpg"},
 {"path": "walnut-wood-cream-bar-stool-java-6.jpg"},
 {"path": "walnut-wood-cream-bar-stool-java-1.jpg"}
]',
N'Elegant and refined, this barstool offers the perfect contemporary take on the grandeur of yesteryear!

The attractive Clara barstool features weathered oak legs with a pleasing natural finish. Upholstered in versatile grey fabric, the barstool would suit most styles of interior décor and complements a variety of colour schemes. The refined styling is completed by button detail to the back. The Clara is comfortable too, so you will always enjoy your time at the breakfast bar! Your guests are sure to be impressed with your choice of furniture and your chic home interior.

This stylish piece would certainly enhance your home and if you love the look then our collection also features matching dining chairs. In addition, you will discover a comprehensive range of fine dining tables and storage solutions to complete your rooms. Comfortable and elegant, the Clara barstool features a pleasing contemporary design with a nod to period style.',
3
)
insert ProductAttribute values(
18, 4
)
insert ProductAttribute values(
18, 8
)




insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
4,
'Walnut and Cream Faux Leather Barstool - Aran',
79.00,
5.0,
20,
4,
N'116062_1_walnut-wood-cream-bar-stool-aran-power-shot.jpg',
N'[{"path": "116062_5_walnut-wood-cream-bar-stool-aran-dimension.jpg"},
 {"path": "116062_2_walnut-wood-cream-bar-stool-aran-close-up-top.jpg"},
 {"path": "116062_3_walnut-wood-cream-bar-stool-aran-front-view.jpg"},
 {"path": "116062_4_walnut-wood-cream-bar-stool-aran-close-up-legs.jpg"}
]',
N'The Aran Bar Stool is modern designed walnut wood frame and a faux leather seat swivel barstool.

This modern styled piece matches other modern styled Home Accessories, although you may prefer to match with other styles to enhance their contrasting colours, tones and finishes.

Delivery Details:

Aran Bar stool is available for immediate delivery, nationwide.
This item is delivered flat pack, requiring simple assembly.',
3
)
insert ProductAttribute values(
19, 4
)
insert ProductAttribute values(
19, 8
)



----------------------------------------------------------LIGHTING--------------------------------------------

insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
5,
'Brass Geometric Floor Lamp - Neo Geo',
174.30,
5.0,
20,
3,
N'124401_1_neo-geo-floor-lamp-124401-frontview.jpg',
N'[{"path": "124401_5_neo-geo-floor-lamp-dimension.jpg"},
 {"path": "124401_2_neo-geo-floor-lamp-124401-shade.jpg"},
 {"path": "124401_3_neo-geo-floor-lamp-124401-base.jpg"},
 {"path": "124401_4_neo-geo-floor-lamp-124401-switch.jpg"}
]',
N'Boasting a striking architectural look, the Neo Geo floor lamp lends interest and structure to your space.

Partnering a geometric base with a tapered drum shade, this floor lamp would be an eye-catching addition to any room but one which complements most colour schemes. The neutral tone of the shade works in harmony with the antique finish of the base to create an elegant contemporary feel which would enhance your interior. A floor lamp is both a decorative piece and a practical feature for your home. It will enable you to adjust your lighting to suit your mood or to read and work on your hobbies with greater ease.

Our fabulous home accessories range includes a stylish lighting collection which offers all the table lamps and floor lamps that you need for your home. Giving you the stylish looks and practical features that make all the difference, our outstanding lamps are the ideal finishing touches for your interior.

Complete your space with a unique floor lamp today by choosing the memorable Neo Geo!',
5
)
insert ProductAttribute values(
20, 3
)
insert ProductAttribute values(
20, 9
)



insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
5,
'Tripod Table Lamp - Anise',
49.30,
2.0,
20,
0,
N'123896_1_tripod-table-lamp-anise-front-view.jpg',
N'[{"path": "123896_5_tripod-table-lamp-anise-dimensions.jpg"},
 {"path": "123896_2_anise-lifestyle-tablelamp.jpg"},
 {"path": "123896_2_tripod-table-lamp-anise-close-up-lamp-shade.jpg"},
 {"path": "123896_3_tripod-table-lamp-anise-close-up-base.jpg"}
]',
N'The stylish architectural look of the Anise tripod table lamp lends interest to your interior. Perfect for a living room or bedroom, this on-trend lamp would complement any décor.

Featuring a wooden stand partnered with a neutral shade, the Anise table lamp could be incorporated into any colour scheme with ease. Effortlessly chic and incredibly current, it fuses retro design features with a contemporary feel to create a truly timeless piece. Positioned on a lamp table or chest, the Anise is an attractive decorative piece which provides task light when you need it. Also ensuring that your lighting is flexible, the lamp enables you to change the mood of your room in an instant.

Our home accessories range includes an outstanding lighting collection offering interesting and inspiring pieces for every room in the house. These include the matching Anise floor lamp which shares the exceptional design qualities of the table lamp and could feature in the same room.

Boasting a simple yet striking design, the versatile Anise table lamp will lift your interior with both mood and task lighting. ',
5
)
insert ProductAttribute values(
21, 4
)
insert ProductAttribute values(
21, 9
)



insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
5,
'Industrial Tripod Floor Lamp with Linen Shade - Holly',
69.30,
5.0,
20,
2,
N'119015_1_industrial-tripod-floor-lamp-with-linen-shade-holly-front-view.jpg',
N'[{"path": "119015_7_industrial-tripod-floor-lamp-with-linen-shade-holly-dimensions.jpg"},
 {"path": "119015_2_holly-floor-lamp.jpg"},
 {"path": "119015_4_industrial-tripod-floor-lamp-with-linen-shade-holly-close-up-legs.jpg"},
 {"path": "119015_3_industrial-tripod-floor-lamp-with-linen-shade-holly-close-up-middle.jpg"}
]',
N'The stylish Holly tripod floor lamp combines natural materials with contemporary, industrial features. Sturdy, angular tripod legs in dark oak provide the base, with matte black metal fixtures giving an industrial feel. This is juxtaposed beautifully by the cream, textured linen barrel lamp shade, allowing you to combine this lamp with both traditional and contemporary interior styles. This versatile lamp is suitable for use in any room of the house. Place atop your favourite lamp table, console table or bedside locker to provide trendy illumination. Team with our fantastic Matrix range of contemporary furniture to complete the look. Switch on and off with ease using the attached black inline foot press power switch. Suitable for use with up to a 60W bulb.',
5
)
insert ProductAttribute values(
22, 4
)
insert ProductAttribute values(
22, 9
)


insert into Product(CategoryID, Name, Price, Discount, InStock, OnOrder, [Image], ListImage, [Description], Rate) values(
5,
'White Stone Table Lamp & White Shade - Lottie',
90.30,
2.0,
20,
1,
N'120469_1_lottie-table-lamp-front-view.jpg',
N'[{"path": "lottie-table-lamp-dimension.jpg"},
 {"path": "120469_3_lottie-table-lamp-close-up-legs.jpg"},
 {"path": "120469_2_lottie-table-lamp.jpg"},
 {"path": "120469_2_lottie-table-lamp-close-up-top.jpg"}
]',
N'This sleek and stylish lamp, simple but perfectly formed, would add a touch of class to any room. The matte splatter effect base, giving it a natural, earthy, and spontaneously artistic feel, is cleverly offset by the clean white shade, a contrast that makes this lamp a statement piece, as well as a functional light source.

The neutral palate of the understated white and pale grey tones means that it will sit beautifully amongst almost any décor and colour scheme, and would be an excellent choice for not only your home, but also as a contemporary and chic addition to a reception desk, waiting room, or small business.

With elegant modern lines, the curve of the base draws inward and so won’t take up much room on your sideboard or bedside table, but the wide-angled shade means that it’ll cast a large warm glow wherever you choose to place it.',
3
)
insert ProductAttribute values(
23, 4
)
insert ProductAttribute values(
23, 14
)
------------------------------------------------------------


insert into Category values (N'SOFAS', 'A')
insert into Category values (N'BEDROOM', 'A')
insert into Category values (N'LIVINGROOM', 'A')
insert into Category values (N'DINNING', 'A')
insert into Category values (N'LIGHTING', 'A')

insert ProductAttribute values(
1, 3
)
insert into ProductAttribute values(
1, 7
)

select * from AttributeValue

select * FROM ProductAttribute where ProductID = 1

select * from Product

select * from AttributeValue inner join AttributeSet on AttributeSet.ID = AttributeValue.AttributeSetID where AttributeValue.ID in( 
select AttributeValueID FROM ProductAttribute  where ProductID = 1)

