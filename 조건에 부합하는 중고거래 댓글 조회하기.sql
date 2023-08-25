select 
used_goods_board.TITLE, 
used_goods_board.BOARD_ID, 
used_goods_reply.REPLY_ID, 
used_goods_reply.WRITER_ID, 
used_goods_reply.CONTENTS, 
DATE_FORMAT(used_goods_reply.CREATED_DATE, "%Y-%m-%d") as "CREATED_DATE"
from used_goods_board inner join used_goods_reply on used_goods_board.BOARD_ID = used_goods_reply.BOARD_ID
where DATE_FORMAT(used_goods_board.CREATED_DATE, '%Y-%m') = "2022-10"
# where used_goods_board.CREATED_DATE like '2022-10-%'
# where SUBSTR(used_goods_board.CREATED_DATE, 1, 7) = "2022-10"
# where used_goods_board.CREATED_DATE between ('2022-10-01') and ('2022-10-31')
order by used_goods_reply.CREATED_DATE ASC, used_goods_board.TITLE ASC;

