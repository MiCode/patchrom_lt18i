.class public Lmiui/app/resourcebrowser/ResourceTabActivity;
.super Landroid/app/TabActivity;
.source "ResourceTabActivity.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# instance fields
.field protected mMetaData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 60
    invoke-static {p1, p2, p0}, Lmiui/app/resourcebrowser/ResourceHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected buildLocalResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method protected buildOnlineResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method protected getLocalResourceListActivity()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getOnlineResourceListActivity()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v15, 0x6030020

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->setContentView(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 23
    .local v4, intent:Landroid/content/Intent;
    const-string v15, "META_DATA"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 24
    .local v9, metaData:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 25
    .local v5, intentExtras:Landroid/os/Bundle;
    if-nez v9, :cond_1

    if-eqz v5, :cond_1

    .line 26
    move-object v9, v5

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, action:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceTabActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    move-object v15, v0

    const-string v16, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 38
    .local v13, resourceSetName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v14

    .line 40
    .local v14, tabHost:Landroid/widget/TabHost;
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getLocalResourceListActivity()Landroid/util/Pair;

    move-result-object v6

    .line 41
    .local v6, localClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/Intent;

    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v5           #intentExtras:Landroid/os/Bundle;
    check-cast v5, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v6           #localClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 42
    .local v7, localIntent:Landroid/content/Intent;
    const-string v15, "META_DATA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceTabActivity;->buildLocalResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    const-string v15, "local"

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x6090052

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 46
    .local v8, localSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v14, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getOnlineResourceListActivity()Landroid/util/Pair;

    move-result-object v10

    .line 49
    .local v10, onlineClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v4           #intent:Landroid/content/Intent;
    check-cast v4, Ljava/lang/String;

    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 50
    .local v11, onlineIntent:Landroid/content/Intent;
    const-string v15, "META_DATA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceTabActivity;->buildOnlineResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    const-string v15, "online"

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x6090053

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    .line 54
    .local v12, onlineSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v14, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 56
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 57
    return-void

    .line 27
    .end local v3           #action:Ljava/lang/String;
    .end local v7           #localIntent:Landroid/content/Intent;
    .end local v8           #localSpec:Landroid/widget/TabHost$TabSpec;
    .end local v10           #onlineClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #onlineIntent:Landroid/content/Intent;
    .end local v12           #onlineSpec:Landroid/widget/TabHost$TabSpec;
    .end local v13           #resourceSetName:Ljava/lang/String;
    .end local v14           #tabHost:Landroid/widget/TabHost;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #intentExtras:Landroid/os/Bundle;
    .restart local p1
    :cond_1
    if-nez v9, :cond_2

    .line 28
    new-instance v9, Landroid/os/Bundle;

    .end local v9           #metaData:Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .restart local v9       #metaData:Landroid/os/Bundle;
    goto/16 :goto_0

    .line 29
    :cond_2
    if-eqz v5, :cond_0

    .line 30
    const-string v15, "META_DATA"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
