.class public Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
.source "LocalResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/LocalResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadResourceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/LocalResourceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;->this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic loadData(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;->loadData(I)[Lmiui/app/resourcebrowser/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(I)[Lmiui/app/resourcebrowser/Resource;
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
