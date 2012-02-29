.class public abstract Lmiui/widget/AsyncImageAdapter;
.super Lmiui/widget/AsyncAdapter;
.source "AsyncImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/widget/AsyncAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, this:Lmiui/widget/AsyncImageAdapter;,"Lmiui/widget/AsyncImageAdapter<TT;>;"
    invoke-direct {p0}, Lmiui/widget/AsyncAdapter;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lmiui/widget/AsyncImageAdapter;,"Lmiui/widget/AsyncImageAdapter<TT;>;"
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 18
    return-void
.end method
