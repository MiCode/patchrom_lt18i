.class public Lmiui/app/screenelement/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter "x0"
    .parameter "y0"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide p1, p0, Lmiui/app/screenelement/Utils$Point;->x:D

    .line 81
    iput-wide p3, p0, Lmiui/app/screenelement/Utils$Point;->y:D

    .line 82
    return-void
.end method


# virtual methods
.method public Offset(Lmiui/app/screenelement/Utils$Point;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 85
    iget-wide v0, p0, Lmiui/app/screenelement/Utils$Point;->x:D

    iget-wide v2, p1, Lmiui/app/screenelement/Utils$Point;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/app/screenelement/Utils$Point;->x:D

    .line 86
    iget-wide v0, p0, Lmiui/app/screenelement/Utils$Point;->y:D

    iget-wide v2, p1, Lmiui/app/screenelement/Utils$Point;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/app/screenelement/Utils$Point;->y:D

    .line 87
    return-void
.end method

.method minus(Lmiui/app/screenelement/Utils$Point;)Lmiui/app/screenelement/Utils$Point;
    .locals 7
    .parameter "a"

    .prologue
    .line 90
    new-instance v0, Lmiui/app/screenelement/Utils$Point;

    iget-wide v1, p0, Lmiui/app/screenelement/Utils$Point;->x:D

    iget-wide v3, p1, Lmiui/app/screenelement/Utils$Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lmiui/app/screenelement/Utils$Point;->y:D

    iget-wide v5, p1, Lmiui/app/screenelement/Utils$Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    return-object v0
.end method
