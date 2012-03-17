.class public Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    iput p2, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mLayoutId:I

    .line 57
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mItemList:Ljava/util/List;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    if-nez p2, :cond_2

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, view:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;

    .line 83
    .local v1, item:Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
    const v4, 0x7f0d004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, icon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 85
    iget v4, v1, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mIconResourceId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_0
    const v4, 0x7f0d004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, text:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 91
    iget v4, v1, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mTextResourceId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :cond_1
    return-object v3

    .line 76
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #item:Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0
.end method
