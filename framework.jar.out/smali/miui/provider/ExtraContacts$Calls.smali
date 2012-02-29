.class public interface abstract Lmiui/provider/ExtraContacts$Calls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Calls"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri; = null

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final INCOMING_FIREWALL_MASK:I = 0xff

.field public static final INCOMING_FORWARDING_CALL:I = 0x100

.field public static final INCOMING_FORWARDING_CALL_MASK:I = 0xff00

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NON_FORWARDING_CALL:I = 0x0

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final NEWCONTACT_TYPE:I = 0x4

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "content://call_log/calls_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    return-void
.end method
