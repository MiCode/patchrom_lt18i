.class public Lmiui/app/resourcebrowser/OnlineResourceListActivity;
.super Lmiui/app/resourcebrowser/ResourceListActivity;
.source "OnlineResourceListActivity.java"

# interfaces
.implements Lmiui/os/AsyncTaskObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/app/resourcebrowser/ResourceListActivity;",
        "Lmiui/os/AsyncTaskObserver",
        "<",
        "Ljava/lang/Void;",
        "Lmiui/app/resourcebrowser/Resource;",
        "Ljava/util/List",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CONFIRM_MIUI_DISCLAIMER_REQUEST:I = 0x3e8


# instance fields
.field private mCategoryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryCode:Ljava/lang/String;

.field private mCloseText:Ljava/lang/String;

.field private mDownloadSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHottestTab:Landroid/widget/TextView;

.field private mKeyword:Ljava/lang/String;

.field private mLatestTab:Landroid/widget/TextView;

.field private mOpenText:Ljava/lang/String;

.field private mSearchBar:Landroid/view/View;

.field private mSearchButton:Landroid/widget/ImageView;

.field private mSearchInAnimation:Landroid/view/animation/Animation;

.field private mSearchInputText:Landroid/widget/EditText;

.field private mSearchOutAnimation:Landroid/view/animation/Animation;

.field private mSearchToggle:Landroid/widget/TextView;

.field private mTabBar:Landroid/view/View;

.field private mTabInAnimation:Landroid/view/animation/Animation;

.field private mTabOutAnimation:Landroid/view/animation/Animation;

.field private mTabSwitchCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mDownloadSet:Ljava/util/Set;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mOpenText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setCategories(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mDownloadSet:Ljava/util/Set;

    return-object v0
.end method

.method private getCategoryHeader()Lmiui/app/resourcebrowser/ResourceCategory;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/ResourceCategory;-><init>()V

    .line 288
    .local v0, category:Lmiui/app/resourcebrowser/ResourceCategory;
    const v1, 0x6090065

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 289
    return-object v0
.end method

.method private requestCategories()V
    .locals 13

    .prologue
    .line 240
    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v10, "com.miui.android.resourcebrowser.CATEGORY_URL"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/app/resourcebrowser/OnlineHelper;->getEncryptedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, url:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/app/resourcebrowser/ResourceConstants;->CATEGORY_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, directory:Ljava/lang/String;
    invoke-static {v0, v8}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-static {v2, v9}, Lmiui/app/resourcebrowser/OnlineHelper;->readCategories(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setCategories(Ljava/util/List;)V

    .line 246
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 247
    .local v5, now:J
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 248
    .local v3, modifiedTime:J
    sub-long v9, v5, v3

    const-wide/32 v11, 0x927c0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 259
    .end local v3           #modifiedTime:J
    .end local v5           #now:J
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance v7, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;

    invoke-direct {v7, p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;-><init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V

    .line 253
    .local v7, task:Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;
    const-string v9, "category"

    invoke-virtual {v7, v9}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->setId(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v7, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 255
    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mDownloadSet:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 256
    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mDownloadSet:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v7, v9}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setCategories(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/ResourceCategory;>;"
    if-eqz p1, :cond_0

    .line 278
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 279
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->getCategoryHeader()Lmiui/app/resourcebrowser/ResourceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private setKeyword(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 234
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    check-cast v0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->setKeyword(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    const-string v2, ".online.hottest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 217
    const v0, 0x603001b

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 74
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setKeyword(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->updateSearchToggleState(Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabSwitchCount:I

    invoke-virtual {v1, v3, v2, v4}, Lmiui/app/resourcebrowser/ResourceAdapter;->loadMoreData(ZIZ)V

    .line 65
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "confirm_miui_disclaimer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onResume()V

    .line 82
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onStop()V

    .line 88
    return-void
.end method

.method protected setupUI()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->setupUI()V

    .line 104
    new-instance v1, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;-><init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V

    .line 113
    .local v1, listener:Landroid/view/View$OnClickListener;
    const v2, 0x60d0047

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mHottestTab:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mHottestTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x60d0048

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mLatestTab:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mLatestTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->updateTabState(Z)V

    .line 120
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mHottestTab:Landroid/widget/TextView;

    const v3, 0x609005c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mLatestTab:Landroid/widget/TextView;

    const v3, 0x609005d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const v2, 0x60d0046

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 124
    .local v0, categoryList:Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    .line 125
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 128
    new-instance v2, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;-><init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->requestCategories()V

    .line 143
    .end local v0           #categoryList:Landroid/widget/Spinner;
    :cond_0
    const v2, 0x60d004a

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInputText:Landroid/widget/EditText;

    .line 144
    const v2, 0x60d004b

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchButton:Landroid/widget/ImageView;

    .line 145
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchButton:Landroid/widget/ImageView;

    new-instance v3, Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;

    invoke-direct {v3, p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;-><init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x60d004c

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;

    new-instance v3, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;

    invoke-direct {v3, p0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;-><init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v2, 0x60d0045

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabBar:Landroid/view/View;

    .line 164
    const v2, 0x60d0049

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchBar:Landroid/view/View;

    .line 166
    const v2, 0x104000c

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mOpenText:Ljava/lang/String;

    .line 167
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCloseText:Ljava/lang/String;

    .line 169
    const v2, 0x10a0002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabInAnimation:Landroid/view/animation/Animation;

    .line 170
    const v2, 0x604000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabOutAnimation:Landroid/view/animation/Animation;

    .line 171
    const v2, 0x604000b

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInAnimation:Landroid/view/animation/Animation;

    .line 172
    const v2, 0x10a0003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchOutAnimation:Landroid/view/animation/Animation;

    .line 173
    return-void
.end method

.method public startDetailActivityForResource(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.CATEGORY_CODE"

    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.KEYWORD"

    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->startDetailActivityForResource(I)V

    .line 231
    return-void
.end method

.method protected updateSearchToggleState(Z)V
    .locals 4
    .parameter "showingSearchBar"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabBar:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchBar:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCloseText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabBar:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchBar:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mOpenText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setKeyword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateTabState(Z)V
    .locals 6
    .parameter "showingHottest"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->stopMusic()V

    .line 177
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mLatestTab:Landroid/widget/TextView;

    if-nez p1, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 178
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mLatestTab:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mHottestTab:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mHottestTab:Landroid/widget/TextView;

    if-nez p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, updateUrl:Ljava/lang/String;
    const/4 v0, 0x0

    .line 183
    .local v0, subpackage:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 184
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_HOTTEST_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v0, ".online.hottest"

    .line 190
    :goto_2
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabSwitchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabSwitchCount:I

    .line 193
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    check-cast v2, Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget v3, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mTabSwitchCount:I

    invoke-virtual {v2, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->setFlag(I)V

    .line 194
    return-void

    .end local v0           #subpackage:Ljava/lang/String;
    .end local v1           #updateUrl:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 177
    goto :goto_0

    :cond_1
    move v3, v4

    .line 180
    goto :goto_1

    .line 187
    .restart local v0       #subpackage:Ljava/lang/String;
    .restart local v1       #updateUrl:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_LATEST_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v0, ".online.latest"

    goto :goto_2
.end method
