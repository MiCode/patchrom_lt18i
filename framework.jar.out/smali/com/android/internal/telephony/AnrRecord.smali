.class public Lcom/android/internal/telephony/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field private static final ANR_EXT1_INDEX:I = 0xe

.field private static final ANR_NUMBER_LENGTH_INDEX:I = 0x1

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field private mAdnIndex:I

.field private mExt1EfId:I

.field private mExt1RecordIndex:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 3
    .parameter "record"
    .parameter "recordIndex"
    .parameter "ext1EfId"

    .prologue
    const/16 v1, 0xff

    const-string v2, ""

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnIndex:I

    .line 69
    iput p3, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1EfId:I

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1RecordIndex:I

    .line 73
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_0

    .line 74
    const-string v0, ""

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AnrRecord;->parseRecord([B)V

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 4
    .parameter "record"

    .prologue
    const-string v3, ""

    .line 89
    const/4 v2, 0x1

    :try_start_0
    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 91
    .local v1, numberLength:I
    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 93
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 101
    .end local v1           #numberLength:I
    :goto_0
    return-void

    .line 95
    .restart local v1       #numberLength:I
    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 96
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1RecordIndex:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v1           #numberLength:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 116
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 124
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing anr ext1 record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getExt1EfId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1EfId:I

    return v0
.end method

.method public getExt1RecordIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1RecordIndex:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1RecordIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExt1RecordIndex:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
