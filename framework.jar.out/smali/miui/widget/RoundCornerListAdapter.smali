.class public Lmiui/widget/RoundCornerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RoundCornerListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private changed:Z

.field private final mAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/RoundCornerListAdapter;->changed:Z

    .line 17
    iput-object p1, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 18
    return-void
.end method

.method private changeListView(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-boolean v2, p0, Lmiui/widget/RoundCornerListAdapter;->changed:Z

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    .line 72
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 74
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/RoundCornerListAdapter;->changed:Z

    goto :goto_0
.end method

.method public static setBackground(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    .line 21
    if-nez p1, :cond_1

    .line 22
    if-ne p2, v0, :cond_0

    .line 23
    const v0, 0x60202f4

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    const v0, 0x60202eb

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 27
    :cond_1
    sub-int v0, p2, v0

    if-ne p1, v0, :cond_2

    .line 28
    const v0, 0x60202ee

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 30
    :cond_2
    const v0, 0x60202f1

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    invoke-direct {p0, p3}, Lmiui/widget/RoundCornerListAdapter;->changeListView(Landroid/view/ViewGroup;)V

    .line 64
    iget-object v1, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lmiui/widget/RoundCornerListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lmiui/widget/RoundCornerListAdapter;->setBackground(Landroid/view/View;II)V

    .line 66
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    return-void
.end method
