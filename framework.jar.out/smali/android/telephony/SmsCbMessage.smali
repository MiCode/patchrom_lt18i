.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 89
    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->parseBody([B)V

    .line 90
    return-void
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsCbMessage;
    .locals 2
    .parameter "pdu"

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p0}, Landroid/telephony/SmsCbMessage;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseBody([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, hasLanguageIndicator:Z
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 195
    :pswitch_0
    const/4 v0, 0x1

    .line 199
    .local v0, encoding:I
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 230
    :cond_0
    :goto_1
    :pswitch_1
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 232
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, v7

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_1

    .line 233
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    .line 234
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 241
    .end local v2           #i:I
    :cond_1
    :goto_3
    return-void

    .line 136
    .end local v0           #encoding:I
    :pswitch_2
    const/4 v0, 0x1

    .line 137
    .restart local v0       #encoding:I
    sget-object v4, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v5, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 141
    .end local v0           #encoding:I
    :pswitch_3
    const/4 v1, 0x1

    .line 142
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v7, :cond_2

    .line 143
    const/4 v0, 0x3

    .restart local v0       #encoding:I
    goto :goto_0

    .line 145
    .end local v0           #encoding:I
    :cond_2
    const/4 v0, 0x1

    .line 147
    .restart local v0       #encoding:I
    goto :goto_0

    .line 150
    .end local v0           #encoding:I
    :pswitch_4
    const/4 v0, 0x1

    .line 151
    .restart local v0       #encoding:I
    sget-object v4, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v5, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 155
    .end local v0           #encoding:I
    :pswitch_5
    const/4 v0, 0x1

    .line 156
    .restart local v0       #encoding:I
    goto :goto_0

    .line 160
    .end local v0           #encoding:I
    :pswitch_6
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0xc

    shr-int/lit8 v4, v4, 0x2

    packed-switch v4, :pswitch_data_2

    .line 171
    const/4 v0, 0x1

    .line 172
    .restart local v0       #encoding:I
    goto :goto_0

    .line 162
    .end local v0           #encoding:I
    :pswitch_7
    const/4 v0, 0x2

    .line 163
    .restart local v0       #encoding:I
    goto :goto_0

    .line 166
    .end local v0           #encoding:I
    :pswitch_8
    const/4 v0, 0x3

    .line 167
    .restart local v0       #encoding:I
    goto :goto_0

    .line 182
    .end local v0           #encoding:I
    :pswitch_9
    const/4 v0, 0x0

    .line 183
    .restart local v0       #encoding:I
    goto :goto_0

    .line 186
    .end local v0           #encoding:I
    :pswitch_a
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v4, v4, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v4, v4, 0x4

    shr-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_3

    .line 187
    const/4 v0, 0x2

    .restart local v0       #encoding:I
    goto :goto_0

    .line 189
    .end local v0           #encoding:I
    :cond_3
    const/4 v0, 0x1

    .line 191
    .restart local v0       #encoding:I
    goto :goto_0

    .line 201
    :pswitch_b
    array-length v4, p1

    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0x7

    invoke-static {p1, v8, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 204
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 205
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 211
    :pswitch_c
    const/4 v3, 0x6

    .line 213
    .local v3, offset:I
    if-eqz v1, :cond_4

    array-length v4, p1

    const/16 v5, 0x8

    if-lt v4, v5, :cond_4

    .line 214
    invoke-static {p1, v8, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 216
    add-int/lit8 v3, v3, 0x2

    .line 220
    :cond_4
    :try_start_0
    new-instance v4, Ljava/lang/String;

    array-length v5, p1

    const v6, 0xfffe

    and-int/2addr v5, v6

    sub-int/2addr v5, v3

    const-string/jumbo v6, "utf-16"

    invoke-direct {v4, p1, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 221
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 232
    .end local v3           #offset:I
    .restart local v2       #i:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 239
    .end local v2           #i:I
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto/16 :goto_3

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch

    .line 160
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getGeographicalScope()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method
