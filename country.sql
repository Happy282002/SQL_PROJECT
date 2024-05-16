use smartphones;
select*from smartphones;

--  1 Retrieve a list of all distinct smartphone brands present in the dataset.
select distinct brand from smartphones;
/*INSIGHTS 
You can analyze the market share of each brand by looking at the frequency of each brand in the dataset. 
Brands with higher frequency are likely to have a larger market share. 
*/

--  2 Calculate the total number of smartphones recorded in the dataset.
select count(smartphone) from smartphones;
/*INSIGHTS 
Changes in the total number of smartphones recorded over time can reflect broader market trends, 
such as periods of growth or decline in smartphone sales. This information can be valuable for
industry analysts and marketers to understand the dynamics of the smartphone market.
*/

--  3 Retrieve the smartphone with the lowest price from the dataset.
select* from smartphones order by final_price asc limit 1;
/* INSIGHTS 
Understanding which brand and model offer the lowest-priced smartphone can shed light on the competitive landscape. 
Companies offering budget smartphones may have different strategies for capturing market share compared to those 
targeting premium segments.
*/

-- 4 Show the detail of the smartphone which are not free.
select*from smartphones where free = 'no';
/*INSIGHTS
Comparing the details of smartphones with non-zero prices across different brands can provide 
insights into the competitive landscape. You can analyze factors such as brand reputation, market share, and innovation 
to understand the strategies employed by various companies to compete in the market.
*/

-- 5 Retrieve smartphones with a storage capacity of 128GB.
select Smartphone,storage from smartphones where storage = 128;
/* INSIGHTS
The presence of smartphones with a storage capacity of 128GB suggests consumer demand for devices with
ample storage space. Understanding the popularity of this storage option can inform product development 
and marketing strategies for manufacturers.
*/

--  6 Retrieve smartphones with a price lower than $500.
select smartphone from smartphones where final_price < 500;
/* INSIGHTS 
 Examining the perceived value offered by smartphones priced below $500 helps understand consumer expectations 
and preferences within this price range. Factors such as build quality, performance, camera capabilities, and
battery life play crucial roles in determining the perceived value of these devices.
*/

-- 7 Retrieve the name of smartphones which are from brand motorola
select smartphone,brand from smartphones where brand = 'motorola';
/* INSIGHTS
The names of Motorola smartphones contribute to brand recognition and brand identity. 
Analyzing the consistency and coherence of naming strategies across different models 
can help assess the strength and effectiveness of Motorola's branding efforts.
*/

--  8 Retrieve the smartphones whose color is brown
select smartphone,color from smartphones where color ='brown';
/* INSIGHTS
Analyzing smartphones with the color brown provides insights into color trends within the smartphone industry. 
Brown may be a niche or less common color choice compared to more traditional options like black, white, or metallic tones. 
Understanding the popularity of brown smartphones can inform design decisions and market strategies for manufacturers.
*/

-- 9 Retrieve the smartphones with ram less than 8
select*from smartphones where ram < 3;
/*
 Consumers of smartphones with less than 8GB of RAM may prioritize affordability over high performance.
 Analyzing the features and specifications of these devices provides insights into the trade-off between 
 performance and price that consumers are willing to make.
*/

-- 10 Display the name of the smartphones who have letter 't' in its name
select*from smartphones where smartphone like '%y%';
/*
Examining the names of smartphones with the letter 't' allows you to understand how certain 
linguistic elements influence consumer perception and brand associations. Positive or aspirational 
words containing 't' may evoke specific emotions or connotations, shaping consumer preferences and purchasing decisions.
*/

-- 11 10 smartphones with the final price less than 500
select*from smartphones where final_price < 500 order by smartphone asc limit 10;
/* INSIGHTS
The presence of smartphones priced below 500 reflects intense competition among manufacturers 
vying for market share in the mid-range and budget segments. Analyzing the brands, models, and
 features of these devices can reveal strategies employed to differentiate and capture consumer interest.
 */
 
-- 12 Show the distribution of RAM capacities (e.g., 4GB, 6GB, 8GB, etc.) among smartphones.
select ram, count(*) as count from smartphones group by ram order by ram;
/* INSIGHTS
Changes in the distribution of RAM capacities over time can reflect market trends and technological advancements.
Analyzing historical data allows you to identify shifts in consumer preferences and technological innovations 
driving changes in RAM configurations.
*/

-- 13 Calculate the average price of smartphones for each brand.
select brand, avg(final_price) as average_price from smartphones group by Brand;
/* INSIGHTS
Understanding the relationship between brand reputation and average prices helps gauge 
consumer price sensitivity within the smartphone market. Brands with strong brand equity 
may command higher prices, while lesser-known brands may need to offer competitive pricing to attract consumers.
*/

