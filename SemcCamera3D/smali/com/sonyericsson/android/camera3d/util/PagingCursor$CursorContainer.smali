.class Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;
.super Ljava/lang/Object;
.source "PagingCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/util/PagingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorContainer"
.end annotation


# instance fields
.field public mCur:Landroid/database/Cursor;

.field public mSize:I

.field public mStartIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 1
    .parameter "cur"
    .parameter "startIndex"

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 415
    iput p2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    goto :goto_0
.end method


# virtual methods
.method public isContain(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 423
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
