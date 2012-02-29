.class public Lmiui/util/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:C = ' '

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public polyPhones:[Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 328
    iput-object p2, p0, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 329
    iput-object p3, p0, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 330
    return-void
.end method
