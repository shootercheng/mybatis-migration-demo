--
--    Copyright 2010-2020 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

drop table if exists test1;

create table test1 (
id int primary key,
name varchar(10)
);

DELIMITER ;;
CREATE DEFINER=`chengdu`@`localhost` PROCEDURE `insert1`()
begin
declare i int;
set i = 1;
while i < 10 do
insert into testdata(foo, bar) values(concat('chengdu',i), i);
set i = i + 1;
end while;
end ;;
DELIMITER ;

-- //@UNDO

drop table test1;

