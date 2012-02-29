.class public Lcom/android/settings/wifi/WifiDialog$PasswordWPAFilter;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordWPAFilter"
.end annotation


# instance fields
.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog$PasswordWPAFilter;->mIsEnabled:Z

    .line 81
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v5, "[0-9A-Fa-f]*"

    .line 90
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog$PasswordWPAFilter;->mIsEnabled:Z

    if-eqz v3, :cond_4

    .line 91
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 94
    .local v0, isHex:Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0x40

    move v2, v3

    .line 95
    .local v2, limit:I
    :goto_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 96
    .local v1, keep:I
    if-gtz v1, :cond_2

    .line 97
    const-string v3, ""

    .line 105
    .end local v0           #isHex:Z
    .end local v1           #keep:I
    .end local v2           #limit:I
    :goto_2
    return-object v3

    :cond_0
    move v0, v6

    .line 91
    goto :goto_0

    .line 94
    .restart local v0       #isHex:Z
    :cond_1
    const/16 v3, 0x3f

    move v2, v3

    goto :goto_1

    .line 98
    .restart local v1       #keep:I
    .restart local v2       #limit:I
    :cond_2
    sub-int v3, p3, p2

    if-lt v1, v3, :cond_3

    move-object v3, v7

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    add-int v3, p2, v1

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    .end local v0           #isHex:Z
    .end local v1           #keep:I
    .end local v2           #limit:I
    :cond_4
    move-object v3, v7

    .line 105
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog$PasswordWPAFilter;->mIsEnabled:Z

    .line 85
    return-void
.end method
