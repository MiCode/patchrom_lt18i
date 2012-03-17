.class public Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;
.super Ljava/lang/Object;
.source "RandomAccessCursorJoiner.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RandomAccessCursorJoiner"


# instance fields
.field private mCurrentCursor:Landroid/database/Cursor;

.field private final mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

.field private final mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

.field private final mDataSetObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)V
    .locals 1
    .parameter "sortedCursor1"
    .parameter "sortedCursor2"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToPosition(I)Z

    .line 108
    return-void
.end method

.method private static compare(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)J
    .locals 4
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getOrder()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getOrder()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private dataSetObserversOnChanged()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 75
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/DataSetObserver;

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onChanged()V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private dataSetObserversOnInvalidated()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 82
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/DataSetObserver;

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->close()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->close()V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->dataSetObserversOnInvalidated()V

    .line 119
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, arg0:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 123
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->deactivate()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->deactivate()V

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->dataSetObserversOnInvalidated()V

    .line 131
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->getPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v1

    add-int v0, v1, p1

    .line 223
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToPosition(I)Z

    move-result v1

    return v1
.end method

.method public moveToFirst()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x1

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 231
    .local v0, first:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 232
    .local v2, second:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToFirst()Z

    move-result v1

    .line 233
    .local v1, firstIsAvarable:Z
    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToFirst()Z

    move-result v3

    .line 235
    .local v3, secondIsAvarable:Z
    if-eqz v1, :cond_2

    .line 236
    if-eqz v3, :cond_1

    .line 237
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->compare(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 238
    invoke-interface {v2, v9}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 239
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 278
    :goto_0
    return v4

    .line 241
    :cond_0
    invoke-interface {v0, v9}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 242
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 245
    :cond_1
    invoke-interface {v2, v9}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 246
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 258
    :cond_2
    if-eqz v3, :cond_3

    .line 259
    invoke-interface {v0, v9}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 260
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 278
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 286
    .local v0, first:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 287
    .local v2, second:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToLast()Z

    move-result v1

    .line 288
    .local v1, firstIsAvarable:Z
    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToLast()Z

    move-result v3

    .line 290
    .local v3, secondIsAvarable:Z
    if-eqz v1, :cond_2

    .line 291
    if-eqz v3, :cond_1

    .line 292
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->compare(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 293
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 329
    :goto_0
    return v4

    .line 295
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 298
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 310
    :cond_2
    if-eqz v3, :cond_3

    .line 311
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 329
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 617
    .local v0, first:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 620
    .local v2, second:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 621
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToNext()Z

    move-result v1

    .line 627
    .local v1, firstIsAvarable:Z
    :goto_0
    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 628
    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToNext()Z

    move-result v3

    .line 633
    .local v3, secondIsAvarable:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 634
    if-eqz v3, :cond_3

    .line 635
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->compare(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 636
    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPrevious()Z

    .line 637
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 674
    :goto_2
    return v4

    .line 623
    .end local v1           #firstIsAvarable:Z
    .end local v3           #secondIsAvarable:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #firstIsAvarable:Z
    goto :goto_0

    .line 630
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #secondIsAvarable:Z
    goto :goto_1

    .line 639
    :cond_2
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPrevious()Z

    .line 640
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 643
    :cond_3
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 655
    :cond_4
    if-eqz v3, :cond_5

    .line 656
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 674
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public moveToPosition(I)Z
    .locals 14
    .parameter "position"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v12

    int-to-long v8, v12

    .line 334
    .local v8, prevPosition:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 338
    .local v10, startTime:J
    if-gez p1, :cond_0

    .line 339
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    const/4 v13, -0x1

    invoke-interface {v12, v13}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 340
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    const/4 v13, -0x1

    invoke-interface {v12, v13}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 341
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    iput-object v12, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 353
    .local v6, endTime:J
    const/4 v12, 0x1

    .line 447
    .end local v6           #endTime:J
    :goto_0
    return v12

    .line 354
    :cond_0
    int-to-long v12, p1

    cmp-long v12, v8, v12

    if-nez v12, :cond_1

    .line 355
    const/4 v12, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-long v2, v12

    .line 359
    .local v2, distFromHead:J
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getCount()I

    move-result v12

    sub-int/2addr v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-long v4, v12

    .line 360
    .local v4, distFromTail:J
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    sub-int/2addr v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-long v0, v12

    .line 362
    .local v0, distFromCurrent:J
    cmp-long v12, v0, v2

    if-gtz v12, :cond_4

    cmp-long v12, v0, v4

    if-gtz v12, :cond_4

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v12

    if-ge p1, v12, :cond_6

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v12

    if-ge p1, v12, :cond_6

    .line 400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToPrevious()Z

    move-result v12

    if-nez v12, :cond_3

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 413
    .restart local v6       #endTime:J
    const/4 v12, 0x0

    goto :goto_0

    .line 364
    .end local v6           #endTime:J
    :cond_4
    cmp-long v12, v2, v4

    if-gtz v12, :cond_5

    .line 365
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_2

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 378
    .restart local v6       #endTime:J
    const/4 v12, 0x0

    goto :goto_0

    .line 381
    .end local v6           #endTime:J
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToLast()Z

    move-result v12

    if-nez v12, :cond_2

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 394
    .restart local v6       #endTime:J
    const/4 v12, 0x0

    goto :goto_0

    .line 416
    .end local v6           #endTime:J
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v12

    if-le p1, v12, :cond_8

    .line 417
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->getPosition()I

    move-result v12

    if-le p1, v12, :cond_8

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 431
    .restart local v6       #endTime:J
    const/4 v12, 0x0

    goto :goto_0

    .line 443
    .end local v6           #endTime:J
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 447
    .restart local v6       #endTime:J
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 682
    .local v0, current:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    .line 685
    .local v2, other:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 686
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    .line 691
    .local v1, currentIsAvailable:Z
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 693
    .local v3, otherIsAvailable:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 694
    if-eqz v3, :cond_4

    .line 696
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->compare(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 697
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    .line 732
    :goto_3
    return v4

    .line 682
    .end local v1           #currentIsAvailable:Z
    .end local v2           #other:Landroid/database/Cursor;
    .end local v3           #otherIsAvailable:Z
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    goto :goto_0

    .line 688
    .restart local v2       #other:Landroid/database/Cursor;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #currentIsAvailable:Z
    goto :goto_1

    :cond_2
    move v3, v5

    .line 691
    goto :goto_2

    .line 699
    .restart local v3       #otherIsAvailable:Z
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 702
    :cond_4
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 714
    :cond_5
    if-eqz v3, :cond_6

    .line 716
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 718
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_3

    :cond_6
    move v4, v5

    .line 732
    goto :goto_3
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 738
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 745
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 746
    .local v0, result:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 747
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 748
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->moveToPosition(I)Z

    .line 749
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->moveToPosition(I)Z

    .line 750
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->dataSetObserversOnChanged()V

    .line 753
    :cond_0
    return v0

    .end local v0           #result:Z
    :cond_1
    move v0, v1

    .line 745
    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 762
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor1:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mCursor2:Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 769
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method
