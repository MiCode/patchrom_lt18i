.class public Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconTextAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mShareResolveInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, info:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    .line 59
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 63
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 65
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 66
    .local v1, n:I
    const/4 v5, 0x1

    if-le v1, v5, :cond_3

    .line 69
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v3, resolve:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 71
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 72
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v6, :cond_0

    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v6, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v5, v6, :cond_1

    .line 74
    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    new-instance v6, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v6, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v3           #resolve:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method private final bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"

    .prologue
    .line 139
    const v4, 0x7f0d004e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, text:Landroid/widget/TextView;
    const v4, 0x7f0d004d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 143
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 144
    .local v1, label:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 145
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 147
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    .line 130
    return-object v0

    .line 127
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method
