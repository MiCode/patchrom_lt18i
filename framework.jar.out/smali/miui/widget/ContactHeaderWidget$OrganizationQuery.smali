.class interface abstract Lmiui/widget/ContactHeaderWidget$OrganizationQuery;
.super Ljava/lang/Object;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OrganizationQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final company:I = 0x0

.field public static final title:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/widget/ContactHeaderWidget$OrganizationQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
