.class public interface abstract Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
.super Ljava/lang/Object;
.source "AsyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AsyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncLoadDataVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dataChanged()Z
.end method

.method public abstract loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter",
            "<TT;>.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation
.end method
