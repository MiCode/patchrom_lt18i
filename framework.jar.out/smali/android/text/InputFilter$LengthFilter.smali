.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 84
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const-string v5, ""

    .line 88
    iget v2, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 90
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 91
    const-string v2, ""

    move-object v2, v5

    .line 102
    :goto_0
    return-object v2

    .line 92
    :cond_0
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_1

    .line 93
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    :cond_1
    add-int v1, p2, v0

    .line 96
    .local v1, keepEnd:I
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    add-int/lit8 v1, v1, -0x1

    .line 98
    if-ne v1, p2, :cond_2

    .line 99
    const-string v2, ""

    move-object v2, v5

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method
