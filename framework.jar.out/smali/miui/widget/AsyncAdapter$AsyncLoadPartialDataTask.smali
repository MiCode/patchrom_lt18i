.class public abstract Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;
.super Lmiui/os/DaemonAsyncTask;
.source "AsyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AsyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AsyncLoadPartialDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/DaemonAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/AsyncAdapter;


# direct methods
.method public constructor <init>(Lmiui/widget/AsyncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadPartialDataTask;"
    iput-object p1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-direct {p0}, Lmiui/os/DaemonAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs onProgressUpdate([Landroid/util/Pair;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadPartialDataTask;"
    .local p1, values:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 499
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    aget-object v2, p1, v3

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 503
    .local v0, key:Ljava/lang/Object;
    aget-object v2, p1, v3

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 504
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 505
    invoke-static {}, Lmiui/widget/AsyncAdapter;->access$500()Lmiui/widget/DataCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/widget/DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v2, p0, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v2}, Lmiui/widget/AsyncAdapter;->notifyDataSetChanged()V

    .line 508
    :cond_2
    invoke-super {p0, p1}, Lmiui/os/DaemonAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 495
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadPartialDataTask;"
    check-cast p1, [Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->onProgressUpdate([Landroid/util/Pair;)V

    return-void
.end method
