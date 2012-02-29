.class public Lmiui/provider/Telocation;
.super Ljava/lang/Object;
.source "Telocation.java"


# static fields
.field public static final ACTION_ADD_CUSTOM_LOCATION:Ljava/lang/String; = "action_add_custom_location"

.field public static final ACTION_EDIT_CUSTOM_LOCATION:Ljava/lang/String; = "action_edit_custom_location"

.field public static final AREACODE_COLUMN_INDEX:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "telocation"

.field public static final CONTENT_CUSTOM_LOCATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/custom_telocations"

.field public static final CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri; = null

.field public static final CONTENT_MOBILE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/telocation.mobile"

.field public static final CONTENT_TEL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/telocation.tel"

.field public static final CONTENT_TEL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/telocation.tel"

.field public static final CUSTOM_ID_COLUMN_INDEX:I = 0x0

.field public static final CUSTOM_LOCATION_COLUMN:Ljava/lang/String; = "location"

.field public static final CUSTOM_LOCATION_COLUMN_INDEX:I = 0x2

.field public static final CUSTOM_NUMBER_COLUMN:Ljava/lang/String; = "number"

.field public static final CUSTOM_NUMBER_COLUMN_INDEX:I = 0x1

.field public static final CUSTOM_TYPE_COLUMN:Ljava/lang/String; = "type"

.field public static final CUSTOM_TYPE_COLUMN_INDEX:I = 0x3

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final LOCATION_COLUMN:Ljava/lang/String; = "location"

.field public static final LOCATION_COLUMN_INDEX:I = 0x1

.field public static final LOCATION_MATCH:Ljava/lang/String; = "customlocations"

.field public static final MOBILE_CONTENT_URI_PREFIX:Ljava/lang/String; = "content://telocation/mobile/"

.field public static final MOBILE_ITEM_MATCH:Ljava/lang/String; = "mobile/#"

.field public static final TEL_CONTENT_URI:Ljava/lang/String; = "content://telocation/tel"

.field public static final TEL_CONTENT_URI_PREFIX:Ljava/lang/String; = "content://telocation/tel/"

.field public static final TEL_ITEM_MATCH:Ljava/lang/String; = "tel/#"

.field public static final TEL_MATCH:Ljava/lang/String; = "tel"

.field public static final TYPE_JITUAN:I = 0x2

.field public static final TYPE_MOB:I = 0x1

.field public static final TYPE_TEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "content://telocation/customlocations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
