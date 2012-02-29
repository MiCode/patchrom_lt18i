.class public Lcom/android/internal/telephony/IccCustProvider;
.super Landroid/content/ContentProvider;
.source "IccCustProvider.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_GET_READ_SIM_FLAG_DONE:I = 0x2

.field private static final EVENT_START_PROCESSING:I = 0x1

.field private static final SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final SIM_CARD_TYPE_NOT_VALID:I = -0x1

.field private static final SIM_FLAG:I = 0x1

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccCustProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field private static final WAIT_TIMEOUT:I = 0x2710


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mProcessReadLock:Ljava/lang/Object;

.field private mProcessingStarted:Z

.field private mRecordsToLoad:I

.field private mSimBit:I

.field private mSimByte:I

.field private mSimFile:I

.field private mSimFlagValue:I

.field private mSimFolder:Ljava/lang/String;

.field private mSimReadReady:Z

.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc-cust"

    const-string v2, "sim_card_flag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/IccCustProvider$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCustProvider$1;-><init>(Lcom/android/internal/telephony/IccCustProvider;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCustProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCustProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccCustProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/IccCustProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFile:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCustProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/IccCustProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$610(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCustProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimBit:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCustProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized fetchSimFlag(Ljava/lang/String;III)I
    .locals 5
    .parameter "simFolder"
    .parameter "simFile"
    .parameter "simByte"
    .parameter "simBit"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 293
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFolder:Ljava/lang/String;

    .line 294
    iput p2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFile:I

    .line 295
    iput p3, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimByte:I

    .line 296
    iput p4, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimBit:I

    .line 297
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    .line 298
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimReadReady:Z

    if-nez v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    .line 301
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCustProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessReadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 308
    :try_start_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCustProvider;->mProcessingStarted:Z

    if-nez v3, :cond_0

    .line 309
    const/4 v3, -0x1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v1, v3

    .line 324
    :goto_1
    monitor-exit p0

    return v1

    .line 301
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3

    .line 320
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 292
    :catchall_2
    move-exception v1

    monitor-exit p0

    throw v1

    .line 311
    :cond_0
    :try_start_a
    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 312
    :catch_0
    move-exception v2

    goto :goto_0

    .line 319
    :cond_1
    :try_start_c
    iget v0, p0, Lcom/android/internal/telephony/IccCustProvider;->mSimFlagValue:I

    .line 320
    .local v0, simFlag:I
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move v1, v0

    .line 324
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 328
    const-string v0, "IccCustProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCustProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 222
    const-string/jumbo v0, "unknown"

    .line 223
    .local v0, type:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-flag"

    .line 233
    return-object v0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 177
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Incorrect selection argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 179
    :cond_1
    const/4 v8, 0x0

    .line 180
    .local v8, simFolder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 181
    .local v6, simFile:I
    const/4 v5, 0x0

    .line 182
    .local v5, simByte:I
    const/4 v4, 0x0

    .line 184
    .local v4, simBit:I
    const/4 v9, 0x0

    :try_start_0
    aget-object v8, p4, v9

    .line 185
    const/4 v9, 0x1

    aget-object v9, p4, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 186
    const/4 v9, 0x2

    aget-object v9, p4, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 187
    const/4 v9, 0x3

    aget-object v9, p4, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 191
    if-lez v5, :cond_2

    if-lez v4, :cond_2

    const/16 v9, 0x8

    if-le v4, v9, :cond_3

    .line 192
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Incorrect selectionArgs argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 188
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 189
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Incorrect selectionArgs argument"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 195
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 205
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 198
    :pswitch_0
    invoke-direct {p0, v8, v6, v5, v4}, Lcom/android/internal/telephony/IccCustProvider;->fetchSimFlag(Ljava/lang/String;III)I

    move-result v7

    .line 199
    .local v7, simFlag:I
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Integer;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v3, v9

    .line 200
    .local v3, record:[Ljava/lang/Integer;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/Cursor;
    sget-object v9, Lcom/android/internal/telephony/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 201
    .restart local v1       #cursor:Landroid/database/Cursor;
    move-object v0, v1

    check-cast v0, Landroid/database/MatrixCursor;

    move-object v2, v0

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 210
    return-object v1

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
