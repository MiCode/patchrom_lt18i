.class public Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;
.super Landroid/app/ListActivity;
.source "CreateShortcutActivity.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d.viewer.Browser"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field private static final POSITION_3D_SWEEP_PANORAMA:I = 0x0

.field private static final POSITION_SWEEP_MULTI_ANGLE:I = 0x1


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;>;"
    new-instance v3, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;

    const v4, 0x7f02003c

    const v5, 0x7f0c008e

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;-><init>(IILjava/lang/String;)V

    .line 63
    .local v3, panorama3d:Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
    const-string v4, "com.sonyericsson.android.camera3d"

    const-string v5, "com.sonyericsson.android.camera3d.viewer.Browser"

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->setClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "com.sonyericsson.android.camera3d.extra.browsingMode"

    const-string v5, "PANORAMA_3D"

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->setExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;

    const v4, 0x7f02003d

    const v5, 0x7f0c008f

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;-><init>(IILjava/lang/String;)V

    .line 71
    .local v2, multiAngle:Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
    const-string v4, "com.sonyericsson.android.camera3d"

    const-string v5, "com.sonyericsson.android.camera3d.viewer.Browser"

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->setClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v4, "com.sonyericsson.android.camera3d.extra.browsingMode"

    const-string v5, "MULTI_ANGLE"

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->setExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    const/4 v4, 0x1

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->mItemList:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;

    const v4, 0x7f03000b

    invoke-direct {v0, p0, v4, v1}, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 96
    .local v0, iconResource:Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 98
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->mItemList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;

    .line 99
    .local v2, item:Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
    if-eqz v2, :cond_0

    .line 100
    iget-object v5, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v5, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mPackageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v5, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mExtraKey:Ljava/lang/String;

    iget-object v6, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget v5, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mIconResourceId:I

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 106
    iget v5, v2, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mTextResourceId:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 111
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v3, resultIntent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v5, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/shortcut/CreateShortcutActivity;->finish()V

    .line 125
    .end local v3           #resultIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
