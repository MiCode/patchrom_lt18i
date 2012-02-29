.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field private mDirections:[S


# direct methods
.method constructor <init>([S)V
    .locals 0
    .parameter "dirs"

    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[S

    .line 1880
    return-void
.end method
