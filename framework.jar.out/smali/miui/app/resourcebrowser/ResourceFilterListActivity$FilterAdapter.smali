.class public Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;
.super Lmiui/app/resourcebrowser/LocalResourceAdapter;
.source "ResourceFilterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceFilterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;
    }
.end annotation


# instance fields
.field private final mFilterCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "context"
    .parameter "metaData"
    .parameter "filterCode"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    iput p3, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->mFilterCode:I

    .line 28
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->mFilterCode:I

    return v0
.end method


# virtual methods
.method protected getLoadDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;-><init>(Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;)V

    .line 34
    .local v1, task:Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->mContext:Landroid/app/Activity;

    check-cast v3, Lmiui/os/AsyncTaskObserver;

    invoke-virtual {v1, v3}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->addObserver(Lmiui/os/AsyncTaskObserver;)V

    .line 35
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter;->getVisitors()Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, visitors:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/Resource;>;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 37
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-virtual {v1, p0}, Lmiui/app/resourcebrowser/ResourceFilterListActivity$FilterAdapter$AsyncClockStyleLoadTask;->addVisitor(Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method
