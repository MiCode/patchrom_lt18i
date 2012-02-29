.class public final enum Lcom/android/internal/telephony/DataConnection$FailCause;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$FailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause; = null

.field private static final RIL_FAILCAUSE_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final RIL_FAILCAUSE_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final RIL_FAILCAUSE_ERROR_UNSPECIFIED:I = 0xffff

.field private static final RIL_FAILCAUSE_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final RIL_FAILCAUSE_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final RIL_FAILCAUSE_MISSING_UNKNOWN_APN:I = 0x1b

.field private static final RIL_FAILCAUSE_NETWORK_FAILURE:I = 0x26

.field private static final RIL_FAILCAUSE_NSAPI_IN_USE:I = 0x23

.field private static final RIL_FAILCAUSE_OPERATOR_BARRED:I = 0x8

.field private static final RIL_FAILCAUSE_PROTOCOL_ERRORS:I = 0x6f

.field private static final RIL_FAILCAUSE_REGISTRATION_FAIL:I = -0x1

.field private static final RIL_FAILCAUSE_REGULAR_DEACTIVATION:I = 0x24

.field private static final RIL_FAILCAUSE_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final RIL_FAILCAUSE_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final RIL_FAILCAUSE_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final RIL_FAILCAUSE_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final RIL_FAILCAUSE_USER_AUTHENTICATION:I = 0x1d

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "OPERATOR_BARRED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "MISSING_UNKNOWN_APN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN_PDP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 177
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "USER_AUTHENTICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 180
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NSAPI_IN_USE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 184
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "REGULAR_DEACTIVATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NETWORK_FAILURE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "REGISTRATION_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "GPRS_REGISTRATION_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "RADIO_NOT_AVAILABLE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 171
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    .line 284
    sparse-switch p0, :sswitch_data_0

    .line 337
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 339
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_0
    return-object v0

    .line 286
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 287
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 289
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 290
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 292
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 293
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 295
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 296
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 298
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 299
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 301
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 302
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 304
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 305
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 307
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 308
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 310
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 311
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 313
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 314
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 316
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 317
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 319
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 320
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 322
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 323
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 325
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 326
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 328
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 329
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 331
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 332
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 334
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_10
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 335
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_10
        -0x1 -> :sswitch_f
        0x8 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_2
        0x1c -> :sswitch_3
        0x1d -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_7
        0x23 -> :sswitch_a
        0x24 -> :sswitch_b
        0x26 -> :sswitch_c
        0x6f -> :sswitch_d
        0xffff -> :sswitch_e
    .end sparse-switch
.end method

.method private isTemporaryFail()Z
    .locals 3

    .prologue
    .line 221
    sget-object v2, Lcom/android/internal/telephony/DataConnection;->tempFailCauses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 222
    .local v0, f:Lcom/android/internal/telephony/DataConnection$FailCause;
    if-ne p0, v0, :cond_0

    const/4 v2, 0x1

    .line 223
    .end local v0           #f:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "name"

    .prologue
    .line 171
    const-class v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$FailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method


# virtual methods
.method public isEventLoggable()Z
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection$FailCause;->isTemporaryFail()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 214
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    const-string v0, "Unknown Data Error"

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    const-string v0, "No Error"

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "Operator Barred"

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v0, "Insufficient Resources"

    goto :goto_0

    .line 248
    :pswitch_3
    const-string v0, "Missing / Unknown APN"

    goto :goto_0

    .line 250
    :pswitch_4
    const-string v0, "Unknown PDP Address"

    goto :goto_0

    .line 252
    :pswitch_5
    const-string v0, "Error User Authentication"

    goto :goto_0

    .line 254
    :pswitch_6
    const-string v0, "Activation Reject GGSN"

    goto :goto_0

    .line 256
    :pswitch_7
    const-string v0, "Activation Reject unspecified"

    goto :goto_0

    .line 258
    :pswitch_8
    const-string v0, "Data Not Supported"

    goto :goto_0

    .line 260
    :pswitch_9
    const-string v0, "Data Not subscribed"

    goto :goto_0

    .line 262
    :pswitch_a
    const-string v0, "Data Services Out of Order"

    goto :goto_0

    .line 264
    :pswitch_b
    const-string v0, "NSAPI in use"

    goto :goto_0

    .line 266
    :pswitch_c
    const-string v0, "Regular Deactivation"

    goto :goto_0

    .line 268
    :pswitch_d
    const-string v0, "Network Failure"

    goto :goto_0

    .line 270
    :pswitch_e
    const-string v0, "Protocol Errors"

    goto :goto_0

    .line 272
    :pswitch_f
    const-string v0, "Network Registration Failure"

    goto :goto_0

    .line 274
    :pswitch_10
    const-string v0, "Data Network Registration Failure"

    goto :goto_0

    .line 276
    :pswitch_11
    const-string v0, "Radio Not Available"

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
