.class Lmiui/util/LocaleUtils$LocaleUtilsBase;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleUtilsBase"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/LocaleUtils;


# direct methods
.method private constructor <init>(Lmiui/util/LocaleUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lmiui/util/LocaleUtils$LocaleUtilsBase;->this$0:Lmiui/util/LocaleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/LocaleUtils;Lmiui/util/LocaleUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lmiui/util/LocaleUtils$LocaleUtilsBase;-><init>(Lmiui/util/LocaleUtils;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "displayName"

    .prologue
    .line 40
    return-object p1
.end method
