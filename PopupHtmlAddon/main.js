
function CreateRectangleGrid(columns, rows)
{
   
    for(var i = 0; i < columns;i++)
    {
        for(var j = 0 ;j<rows;j++)
        {
            host.ActiveDocument.ActiveLayer.CreateRectangle2(i,j,1,1);
        }
    }
}



