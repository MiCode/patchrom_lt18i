.class public Lmiui/telephony/PhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;,
        Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "86"

.field public static final CHINA_MCC:Ljava/lang/String; = "460"

.field private static final CHINA_MOBILE_NUMBER_LENGTH:I = 0xb

.field private static final CHINA_MOBILE_NUMBER_PREFIX:Ljava/lang/String; = "1"

.field private static final CHINA_REGION_CODE1:Ljava/lang/String; = "+86"

.field private static final CHINA_REGION_CODE2:Ljava/lang/String; = "0086"

.field public static final CMCC_MCC_MNC_CODE1:Ljava/lang/String; = "46000"

.field public static final CMCC_MCC_MNC_CODE2:Ljava/lang/String; = "46007"

.field public static final CMCC_MCC_MNC_CODE3:Ljava/lang/String; = "46002"

.field public static final CUTC_MCC_MNC_CODE:Ljava/lang/String; = "46001"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    .line 963
    return-void
.end method

.method public static cancelAsyncTelocationQuery(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 1235
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->cancelOperation(I)V

    .line 1236
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 2
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    .line 1314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1317
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    goto :goto_0
.end method

.method public static formatNumberWithoutIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 1278
    if-nez p1, :cond_0

    move-object v2, p1

    .line 1301
    .end local p1
    .local v2, number:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1281
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_autoip"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 1284
    .local v1, isAutoIpEnabled:Z
    :goto_1
    if-nez v1, :cond_2

    move-object v2, p1

    .line 1286
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .end local v1           #isAutoIpEnabled:Z
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_1
    move v1, v5

    .line 1281
    goto :goto_1

    .line 1289
    .restart local v1       #isAutoIpEnabled:Z
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoip_prefix"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, ipPrefix:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1293
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 1296
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0

    .line 1298
    .end local v2           #number:Ljava/lang/String;
    .restart local p1
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v2, p1

    .line 1301
    .end local p1
    .restart local v2       #number:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1253
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1255
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, simOperator:Ljava/lang/String;
    const-string v2, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1259
    :cond_0
    const-string v2, "17951"

    .line 1263
    :goto_0
    return-object v2

    .line 1260
    :cond_1
    const-string v2, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1261
    const-string v2, "17911"

    goto :goto_0

    .line 1263
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 91
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 93
    .local v3, wIndex:I
    invoke-static {v1, v3}, Lmiui/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 95
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 96
    sub-int v4, v0, v5

    .line 98
    :goto_0
    return v4

    :cond_0
    sub-int v4, v2, v5

    goto :goto_0
.end method

.method public static isChinaMobileNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb

    const-string v5, "86"

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    move v1, v4

    .line 159
    :goto_0
    return v1

    .line 149
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "86"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    if-lt v1, v2, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const-string v2, "86"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "861"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v4

    .line 159
    goto :goto_0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 137
    :goto_1
    return v2

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 1330
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 1352
    :goto_0
    return v2

    .line 1332
    :cond_0
    move-object v0, p0

    .line 1336
    .local v0, origNumber:Ljava/lang/String;
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1339
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 1340
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v1, :cond_1

    .line 1341
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object p0

    .line 1346
    .end local v1           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    const-string v2, "112"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "911"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "110"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "119"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "120"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "122"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1349
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1352
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 181
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 182
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static minPositive(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 66
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 67
    if-ge p0, p1, :cond_0

    move v0, p0

    .line 73
    :goto_0
    return v0

    :cond_0
    move v0, p1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-ltz p0, :cond_2

    move v0, p0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-ltz p1, :cond_3

    move v0, p1

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1247
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "listener"
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1224
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public static splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v2, 0x0

    .line 171
    :goto_0
    return-object v2

    .line 167
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 168
    .local v0, networkEnd:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 169
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 170
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_1

    const-string v3, ""

    :goto_1
    aput-object v3, v1, v2

    move-object v2, v1

    .line 171
    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static stripSeparatorsAndCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const-string v3, "0086"

    const-string v2, "+86"

    .line 48
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string v1, "+86"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    const-string v1, "0086"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "0086"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
