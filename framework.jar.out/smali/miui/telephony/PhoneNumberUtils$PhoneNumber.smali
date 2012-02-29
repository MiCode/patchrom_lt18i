.class public Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final COUNTRY_CODE_CHINA:Ljava/lang/String; = "86"

.field private static COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern; = null

.field private static COUNTRY_PATTERN_STARTS_WITH_44:Ljava/util/regex/Pattern; = null

.field private static final HASH_STRING_INDICATOR:C = '\u0001'

.field private static final MISSING_AREA_CODE_INDICATOR:C = '\u0002'

.field private static PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static PREFIX_PATTERN_SMS:Ljava/util/regex/Pattern;

.field private static final countryCode2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mOriginalPhoneNumber:Ljava/lang/String;

.field private mPostDialString:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x60900d8

    const v7, 0x60900d9

    const v6, 0x6090144

    const v5, 0x6090142

    const v4, 0x6090143

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1242"

    const v3, 0x60900c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1246"

    const v3, 0x60900c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1264"

    const v3, 0x60900c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1268"

    const v3, 0x60900c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1284"

    const v3, 0x60900ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1340"

    const v3, 0x60900cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1345"

    const v3, 0x60900cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1441"

    const v3, 0x60900cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1473"

    const v3, 0x60900ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1649"

    const v3, 0x60900cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1664"

    const v3, 0x60900d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1670"

    const v3, 0x60900d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1671"

    const v3, 0x60900d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1684"

    const v3, 0x60900d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1721"

    const v3, 0x60900d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1758"

    const v3, 0x60900d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1767"

    const v3, 0x60900d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1784"

    const v3, 0x60900d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1787"

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1809"

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1829"

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1849"

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1868"

    const v3, 0x60900da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1869"

    const v3, 0x60900db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1876"

    const v3, 0x60900dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1939"

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1"

    const v3, 0x60900dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "20"

    const v3, 0x60900de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "212"

    const v3, 0x60900df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "213"

    const v3, 0x60900e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "216"

    const v3, 0x60900e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "218"

    const v3, 0x60900e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "220"

    const v3, 0x60900e3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "221"

    const v3, 0x60900e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "222"

    const v3, 0x60900e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "223"

    const v3, 0x60900e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "224"

    const v3, 0x60900e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "225"

    const v3, 0x60900e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "226"

    const v3, 0x60900e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "227"

    const v3, 0x60900ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "228"

    const v3, 0x60900eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "229"

    const v3, 0x60900ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "230"

    const v3, 0x60900ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "231"

    const v3, 0x60900ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "232"

    const v3, 0x60900ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "233"

    const v3, 0x60900f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "234"

    const v3, 0x60900f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "235"

    const v3, 0x60900f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "236"

    const v3, 0x60900f3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "237"

    const v3, 0x60900f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "238"

    const v3, 0x60900f5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "239"

    const v3, 0x60900f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "240"

    const v3, 0x60900f7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "241"

    const v3, 0x60900f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "242"

    const v3, 0x60900f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "243"

    const v3, 0x60900fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "244"

    const v3, 0x60900fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "245"

    const v3, 0x60900fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "246"

    const v3, 0x60900fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "247"

    const v3, 0x60900fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "248"

    const v3, 0x60900ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "249"

    const v3, 0x6090100

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "250"

    const v3, 0x6090101

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "251"

    const v3, 0x6090102

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "252"

    const v3, 0x6090103

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "253"

    const v3, 0x6090104

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "254"

    const v3, 0x6090105

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "255"

    const v3, 0x6090106

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "256"

    const v3, 0x6090107

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "257"

    const v3, 0x6090108

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "258"

    const v3, 0x6090109

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "260"

    const v3, 0x609010a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "261"

    const v3, 0x609010b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "262"

    const v3, 0x609010c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "263"

    const v3, 0x609010d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "264"

    const v3, 0x609010e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "265"

    const v3, 0x609010f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "266"

    const v3, 0x6090110

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "267"

    const v3, 0x6090111

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "268"

    const v3, 0x6090112

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "269"

    const v3, 0x6090113

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "27"

    const v3, 0x6090114

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "290"

    const v3, 0x6090115

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "291"

    const v3, 0x6090116

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "297"

    const v3, 0x6090117

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "298"

    const v3, 0x6090118

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "299"

    const v3, 0x6090119

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "30"

    const v3, 0x609011a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "31"

    const v3, 0x609011b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "32"

    const v3, 0x609011c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "33"

    const v3, 0x609011d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "34"

    const v3, 0x609011e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "350"

    const v3, 0x609011f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "351"

    const v3, 0x6090120

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "352"

    const v3, 0x6090121

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "353"

    const v3, 0x6090122

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "354"

    const v3, 0x6090123

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "355"

    const v3, 0x6090124

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "356"

    const v3, 0x6090125

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "357"

    const v3, 0x6090126

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "358"

    const v3, 0x6090127

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "359"

    const v3, 0x6090128

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "36"

    const v3, 0x6090129

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "370"

    const v3, 0x609012a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "371"

    const v3, 0x609012b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "372"

    const v3, 0x609012c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "373"

    const v3, 0x609012d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "374"

    const v3, 0x609012e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "375"

    const v3, 0x609012f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "376"

    const v3, 0x6090130

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "377"

    const v3, 0x6090131

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "378"

    const v3, 0x6090132

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "380"

    const v3, 0x6090133

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "381"

    const v3, 0x6090134

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "382"

    const v3, 0x6090135

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "385"

    const v3, 0x6090136

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "386"

    const v3, 0x6090137

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "387"

    const v3, 0x6090138

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "389"

    const v3, 0x6090139

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "3906698"

    const v3, 0x609013a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "39"

    const v3, 0x609013b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "40"

    const v3, 0x609013c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "41"

    const v3, 0x609013d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "420"

    const v3, 0x609013e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "421"

    const v3, 0x609013f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "423"

    const v3, 0x6090140

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "43"

    const v3, 0x6090141

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "441481"

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "441534"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "441624"

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447509"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447524"

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447624"

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447700"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447781"

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447797"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447829"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447839"

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447911"

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "447924"

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "44"

    const v3, 0x6090145

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "45"

    const v3, 0x6090146

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "46"

    const v3, 0x6090147

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "47"

    const v3, 0x6090148

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "48"

    const v3, 0x6090149

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "49"

    const v3, 0x609014a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "500"

    const v3, 0x609014b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "501"

    const v3, 0x609014c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "502"

    const v3, 0x609014d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "503"

    const v3, 0x609014e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "504"

    const v3, 0x609014f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "505"

    const v3, 0x6090150

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "506"

    const v3, 0x6090151

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "507"

    const v3, 0x6090152

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "508"

    const v3, 0x6090153

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "509"

    const v3, 0x6090154

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "51"

    const v3, 0x6090155

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "52"

    const v3, 0x6090156

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "53"

    const v3, 0x6090157

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "54"

    const v3, 0x6090158

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "55"

    const v3, 0x6090159

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "56"

    const v3, 0x609015a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "57"

    const v3, 0x609015b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "58"

    const v3, 0x609015c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "590"

    const v3, 0x609015d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "591"

    const v3, 0x609015e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "592"

    const v3, 0x609015f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "593"

    const v3, 0x6090160

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "594"

    const v3, 0x6090161

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "595"

    const v3, 0x6090162

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "596"

    const v3, 0x6090163

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "597"

    const v3, 0x6090164

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "598"

    const v3, 0x6090165

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "599"

    const v3, 0x6090166

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "60"

    const v3, 0x6090167

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "61"

    const v3, 0x6090168

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "62"

    const v3, 0x6090169

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "63"

    const v3, 0x609016a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "64"

    const v3, 0x609016b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "65"

    const v3, 0x609016c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "66"

    const v3, 0x609016d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "670"

    const v3, 0x609016e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "673"

    const v3, 0x609016f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "674"

    const v3, 0x6090170

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "675"

    const v3, 0x6090171

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "676"

    const v3, 0x6090172

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "677"

    const v3, 0x6090173

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "678"

    const v3, 0x6090174

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "679"

    const v3, 0x6090175

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "680"

    const v3, 0x6090176

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "681"

    const v3, 0x6090177

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "682"

    const v3, 0x6090178

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "683"

    const v3, 0x6090179

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "685"

    const v3, 0x609017a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "686"

    const v3, 0x609017b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "687"

    const v3, 0x609017c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "688"

    const v3, 0x609017d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "689"

    const v3, 0x609017e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "690"

    const v3, 0x609017f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "691"

    const v3, 0x6090180

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "692"

    const v3, 0x6090181

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "7"

    const v3, 0x6090182

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "81"

    const v3, 0x6090183

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "82"

    const v3, 0x6090184

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "84"

    const v3, 0x6090185

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "850"

    const v3, 0x6090186

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "852"

    const v3, 0x6090187

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "853"

    const v3, 0x6090188

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "855"

    const v3, 0x6090189

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "856"

    const v3, 0x609018a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "86"

    const v3, 0x609018b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "880"

    const v3, 0x609018c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "886"

    const v3, 0x609018d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "90"

    const v3, 0x609018e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "91"

    const v3, 0x609018f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "92"

    const v3, 0x6090190

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "93"

    const v3, 0x6090191

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "94"

    const v3, 0x6090192

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "95"

    const v3, 0x6090193

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "960"

    const v3, 0x6090194

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "961"

    const v3, 0x6090195

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "962"

    const v3, 0x6090196

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "963"

    const v3, 0x6090197

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "964"

    const v3, 0x6090198

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "965"

    const v3, 0x6090199

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "966"

    const v3, 0x609019a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "967"

    const v3, 0x609019b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "968"

    const v3, 0x609019c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "970"

    const v3, 0x609019d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "971"

    const v3, 0x609019e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "972"

    const v3, 0x609019f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "973"

    const v3, 0x60901a0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "974"

    const v3, 0x60901a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "975"

    const v3, 0x60901a2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "976"

    const v3, 0x60901a3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "977"

    const v3, 0x60901a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "98"

    const v3, 0x60901a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "992"

    const v3, 0x60901a6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "993"

    const v3, 0x60901a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "994"

    const v3, 0x60901a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "995"

    const v3, 0x60901a9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "996"

    const v3, 0x60901aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "998"

    const v3, 0x60901ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "^(17901|17911|17951|17961|12593|12520|10657|10656|10650|10651|10659)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 638
    const-string v1, "^(12520|10657|10656|10650|10651|10659)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN_SMS:Ljava/util/regex/Pattern;

    .line 658
    const-string v1, "^(242|246|264|268|284|340|345|441|473|649|664|670|671|684|721|758|767|784|787|809|829|849|868|869|876|939)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    .line 660
    const-string v1, "^(1481|1534|1624|7509|7524|7624|7700|7781|7797|7829|7839|7911|7924)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_44:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "phoneNumber"

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const-string v6, "00"

    const-string v3, ""

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    .line 610
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v1, "+00"

    const-string v2, "00"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 615
    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 616
    const-string v0, ""

    iput-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 617
    const-string v0, ""

    iput-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 618
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v1, "+"

    const-string v2, "00"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 572
    if-eqz p0, :cond_0

    .line 573
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 579
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getDialableNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "hashString"

    .prologue
    .line 485
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const-string v1, ""

    .line 496
    :goto_0
    return-object v1

    .line 489
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 490
    .local v0, index:I
    if-gez v0, :cond_1

    .line 491
    const/4 v0, 0x1

    .line 496
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 493
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 496
    goto :goto_0
.end method

.method public static getHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dialableNumber"

    .prologue
    .line 476
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 477
    .local v0, number:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-nez v0, :cond_0

    move-object v1, p0

    .line 480
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isChineseOperator()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "460"

    .line 583
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 584
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, simOperator:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, networkOperator:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "460"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 600
    :goto_0
    return v3

    .line 590
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "460"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 591
    goto :goto_0

    .line 594
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 598
    goto :goto_0

    .line 600
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    .line 626
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 632
    :goto_0
    return-object v1

    .line 628
    :cond_0
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    iget-object v1, v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parsePrefix()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parseCountryCode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parseAreaCode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 630
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 632
    goto :goto_0
.end method

.method private parseAreaCode()Z
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    const-string v0, "86"

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 840
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    goto :goto_0

    .line 842
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseChineseNumber()Z
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 877
    :goto_0
    return v0

    .line 850
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v0

    if-nez v0, :cond_2

    .line 851
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    move v0, v1

    .line 852
    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 869
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    move v0, v1

    .line 870
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 857
    goto :goto_0

    .line 859
    :pswitch_1
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 860
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_2
    :goto_1
    move v0, v2

    .line 877
    goto :goto_0

    .line 865
    :pswitch_2
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 872
    :cond_3
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseCountryCode()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 664
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 831
    :goto_0
    return v2

    .line 667
    :cond_0
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 668
    goto :goto_0

    .line 670
    :cond_1
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, countryCodeLength:I
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 673
    goto :goto_0

    .line 675
    :cond_2
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    .line 827
    goto :goto_0

    .line 677
    :pswitch_0
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 678
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 679
    const/4 v0, 0x1

    .line 829
    .end local v1           #m:Ljava/util/regex/Matcher;
    :goto_1
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 830
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    move v2, v5

    .line 831
    goto :goto_0

    .line 681
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 683
    goto :goto_1

    .line 685
    .end local v1           #m:Ljava/util/regex/Matcher;
    :pswitch_1
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_4

    move v2, v4

    .line 686
    goto :goto_0

    .line 688
    :cond_4
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 694
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_5

    move v2, v4

    .line 695
    goto :goto_0

    .line 691
    :sswitch_0
    const/4 v0, 0x2

    .line 692
    goto :goto_1

    .line 697
    :cond_5
    const/4 v0, 0x3

    .line 698
    goto :goto_1

    .line 702
    :pswitch_2
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_6

    move v2, v4

    .line 703
    goto/16 :goto_0

    .line 705
    :cond_6
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 722
    :pswitch_3
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_9

    move v2, v4

    .line 723
    goto/16 :goto_0

    .line 712
    :pswitch_4
    const/4 v0, 0x2

    .line 713
    goto :goto_1

    .line 715
    :pswitch_5
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v3, "3906698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 716
    :cond_7
    const/4 v0, 0x2

    goto :goto_1

    .line 718
    :cond_8
    const/4 v0, 0x7

    .line 720
    goto :goto_1

    .line 725
    :cond_9
    const/4 v0, 0x3

    .line 726
    goto :goto_1

    .line 730
    :pswitch_6
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_a

    move v2, v4

    .line 731
    goto/16 :goto_0

    .line 733
    :cond_a
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 749
    :pswitch_7
    const/4 v0, 0x2

    .line 750
    goto/16 :goto_1

    .line 735
    :pswitch_8
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_b

    move v2, v4

    .line 736
    goto/16 :goto_0

    .line 738
    :cond_b
    const/4 v0, 0x3

    .line 739
    goto/16 :goto_1

    .line 741
    :pswitch_9
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_44:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 742
    .restart local v1       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_c

    .line 743
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 745
    :cond_c
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 747
    goto/16 :goto_1

    .line 754
    .end local v1           #m:Ljava/util/regex/Matcher;
    :pswitch_a
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_d

    move v2, v4

    .line 755
    goto/16 :goto_0

    .line 757
    :cond_d
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 766
    const/4 v0, 0x2

    .line 767
    goto/16 :goto_1

    .line 760
    :sswitch_1
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_e

    move v2, v4

    .line 761
    goto/16 :goto_0

    .line 763
    :cond_e
    const/4 v0, 0x3

    .line 764
    goto/16 :goto_1

    .line 771
    :pswitch_b
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_f

    move v2, v4

    .line 772
    goto/16 :goto_0

    .line 774
    :cond_f
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 784
    const/4 v0, 0x2

    .line 785
    goto/16 :goto_1

    .line 778
    :pswitch_c
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_10

    move v2, v4

    .line 779
    goto/16 :goto_0

    .line 781
    :cond_10
    const/4 v0, 0x3

    .line 782
    goto/16 :goto_1

    .line 789
    :pswitch_d
    const/4 v0, 0x1

    .line 790
    goto/16 :goto_1

    .line 792
    :pswitch_e
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_11

    move v2, v4

    .line 793
    goto/16 :goto_0

    .line 795
    :cond_11
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_4

    .line 804
    :pswitch_f
    const/4 v0, 0x2

    .line 805
    goto/16 :goto_1

    .line 798
    :pswitch_10
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_12

    move v2, v4

    .line 799
    goto/16 :goto_0

    .line 801
    :cond_12
    const/4 v0, 0x3

    .line 802
    goto/16 :goto_1

    .line 809
    :pswitch_11
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_13

    move v2, v4

    .line 810
    goto/16 :goto_0

    .line 812
    :cond_13
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_5

    .line 822
    :pswitch_12
    const/4 v0, 0x2

    .line 823
    goto/16 :goto_1

    .line 816
    :pswitch_13
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_14

    move v2, v4

    .line 817
    goto/16 :goto_0

    .line 819
    :cond_14
    const/4 v0, 0x3

    .line 820
    goto/16 :goto_1

    .line 675
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch

    .line 705
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 733
    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 757
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x39 -> :sswitch_1
    .end sparse-switch

    .line 774
    :pswitch_data_3
    .packed-switch 0x37
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 795
    :pswitch_data_4
    .packed-switch 0x35
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 812
    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private parsePrefix()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 646
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 655
    :goto_0
    return v1

    .line 650
    :cond_0
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 651
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 653
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_1
    move v1, v3

    .line 655
    goto :goto_0
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHashString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 500
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string v0, "%c(00%s)%s%s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    const-string v0, "%c(00%s)%s%s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "86"

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 507
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    const-string v0, "%c(00%s)%s-%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "86"

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_2
    const-string v0, "%c(00%s)%s%s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "86"

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_3
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    const-string v0, "%c(00%s)%s-%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "86"

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 515
    :cond_4
    const-string v0, "%c(00%s)%c%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "86"

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getNormalizedNumber(ZZ)Ljava/lang/String;
    .locals 6
    .parameter "withCountryCode"
    .parameter "withPostDialString"

    .prologue
    const-string v5, "0"

    const-string v4, "+86"

    const-string v3, "+"

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 555
    :goto_0
    if-eqz p2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 529
    :cond_0
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+86"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    .line 534
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 537
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_6

    .line 538
    :cond_4
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 539
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_0

    .line 541
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 548
    :cond_7
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 549
    if-eqz p1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+86"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_3
    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3

    .line 552
    :cond_9
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    .line 555
    goto/16 :goto_1
.end method

.method public getNumberWithoutPrefix(Z)Ljava/lang/String;
    .locals 3
    .parameter "withPostDialString"

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 472
    :goto_0
    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 467
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 472
    goto :goto_1
.end method

.method public getOriginalPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isChineseNumber()Z
    .locals 2

    .prologue
    .line 881
    const-string v0, "86"

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

.method public isNormalMobileNumber()Z
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 886
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 888
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    .line 889
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 890
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 907
    .end local v0           #c:C
    :goto_0
    return v1

    .line 893
    .restart local v0       #c:C
    :pswitch_1
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 896
    :pswitch_2
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    move v1, v4

    .line 900
    goto :goto_0

    .end local v0           #c:C
    :cond_3
    move v1, v3

    .line 907
    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isServiceNumber()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x30

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 911
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 912
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 913
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 914
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 915
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v4

    .line 942
    .end local v0           #c:C
    :goto_0
    return v1

    .restart local v0       #c:C
    :pswitch_1
    move v1, v3

    .line 921
    goto :goto_0

    .line 924
    :pswitch_2
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    .line 930
    :pswitch_3
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 934
    :cond_2
    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    move v1, v3

    .line 936
    goto :goto_0

    .line 937
    :cond_3
    const/16 v1, 0x32

    if-lt v0, v1, :cond_5

    const/16 v1, 0x38

    if-gt v0, v1, :cond_5

    .line 939
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    .end local v0           #c:C
    :cond_5
    move v1, v4

    .line 942
    goto :goto_0

    .line 915
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isSmsPrefix()Z
    .locals 3

    .prologue
    .line 641
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN_SMS:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 642
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method
