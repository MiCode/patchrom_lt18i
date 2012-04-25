.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
.super Lcom/sonyericsson/android/camera/photostack/PagingCursor;
.source "PhotoStackLoader.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderedPagingCursor"
.end annotation


# instance fields
.field private final mOrderedColumnIndex:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;IILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "params"
    .parameter "pagingSize"
    .parameter "orderedColumnIndex"
    .parameter "tag"

    .prologue
    .line 1018
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;ILjava/lang/String;)V

    .line 1019
    iput p5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->mOrderedColumnIndex:I

    .line 1020
    return-void
.end method


# virtual methods
.method public getOrder()J
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    :cond_0
    const-wide/16 v0, -0x1

    .line 1026
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->mOrderedColumnIndex:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method
