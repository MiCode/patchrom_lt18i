.class public Lmiui/app/resourcebrowser/ResourceFilterListActivity;
.super Lmiui/app/resourcebrowser/LocalResourceListActivity;
.source "ResourceFilterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;
    }
.end annotation


# static fields
.field public static final FILTER:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/app/resourcebrowser/LocalResourceListActivity;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 5

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    const-string v2, ".local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFilterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-object v0
.end method
