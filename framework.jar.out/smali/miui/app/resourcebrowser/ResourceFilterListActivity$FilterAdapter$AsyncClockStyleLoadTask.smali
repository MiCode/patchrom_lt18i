.class public Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
.source "ResourceFilterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncClockStyleLoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->this$0:Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic loadData(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->loadData(I)[Lmiui/app/resourcebrowser/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(I)[Lmiui/app/resourcebrowser/Resource;
    .locals 1
    .parameter "index"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onLoadData([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, [Lmiui/app/resourcebrowser/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->onLoadData([Lmiui/app/resourcebrowser/Resource;)V

    return-void
.end method

.method public varargs onLoadData([Lmiui/app/resourcebrowser/Resource;)V
    .locals 11
    .parameter "partialDataSet"

    .prologue
    .line 47
    if-eqz p1, :cond_6

    .line 48
    array-length v9, p1

    new-array v2, v9, [Z

    .line 49
    .local v2, flag:[Z
    const/4 v0, 0x0

    .line 50
    .local v0, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_3

    .line 51
    aget-object v6, p1, v3

    .line 52
    .local v6, r:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v6}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "RESOURCE_NVP"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 54
    .local v7, s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v9, "type"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, filterStr:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->this$0:Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->mFilterCode:I
    invoke-static {v9}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->access$000(Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;)I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    aput-boolean v9, v2, v3

    .line 60
    aget-boolean v9, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 67
    .end local v1           #filterStr:Ljava/lang/String;
    .end local v6           #r:Lmiui/app/resourcebrowser/Resource;
    .end local v7           #s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-array v8, v0, [Lmiui/app/resourcebrowser/Resource;

    .line 68
    .local v8, usable:[Lmiui/app/resourcebrowser/Resource;
    const/4 v4, 0x0

    .line 69
    .local v4, k:I
    const/4 v3, 0x0

    :goto_3
    array-length v9, v8

    if-ge v3, v9, :cond_5

    .line 70
    aget-boolean v9, v2, v3

    if-eqz v9, :cond_4

    .line 71
    add-int/lit8 v5, v4, 0x1

    .end local v4           #k:I
    .local v5, k:I
    aget-object v9, p1, v3

    aput-object v9, v8, v4

    move v4, v5

    .line 69
    .end local v5           #k:I
    .restart local v4       #k:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 74
    :cond_5
    move-object p1, v8

    .line 76
    .end local v0           #c:I
    .end local v2           #flag:[Z
    .end local v3           #i:I
    .end local v4           #k:I
    .end local v8           #usable:[Lmiui/app/resourcebrowser/Resource;
    :cond_6
    invoke-super {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 77
    return-void

    .line 63
    .restart local v0       #c:I
    .restart local v1       #filterStr:Ljava/lang/String;
    .restart local v2       #flag:[Z
    .restart local v3       #i:I
    .restart local v6       #r:Lmiui/app/resourcebrowser/Resource;
    .restart local v7       #s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    goto :goto_1
.end method
