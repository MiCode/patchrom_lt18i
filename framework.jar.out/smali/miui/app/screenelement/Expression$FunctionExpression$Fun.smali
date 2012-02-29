.class final enum Lmiui/app/screenelement/Expression$FunctionExpression$Fun;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression$FunctionExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/Expression$FunctionExpression$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum ABS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum ACOS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum ASIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum ATAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum COS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum COSH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum DIGIT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum INT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum INVALID:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum LEN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum MAX:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum MIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum ROUND:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum SIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum SINH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum SQRT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field public static final enum TAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->INVALID:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 259
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "SIN"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 260
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "COS"

    invoke-direct {v0, v1, v5}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 261
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "TAN"

    invoke-direct {v0, v1, v6}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->TAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 262
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "ASIN"

    invoke-direct {v0, v1, v7}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ASIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 263
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "ACOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ACOS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 264
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "ATAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ATAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 265
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "SINH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SINH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 266
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "COSH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COSH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 267
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "SQRT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SQRT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 268
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "ABS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ABS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 269
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "LEN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->LEN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 270
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "ROUND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ROUND:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 271
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "INT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->INT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 272
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "MIN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 273
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "MAX"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MAX:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 274
    new-instance v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    const-string v1, "DIGIT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->DIGIT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 257
    const/16 v0, 0x11

    new-array v0, v0, [Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->INVALID:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->TAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ASIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ACOS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ATAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SINH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COSH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SQRT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ABS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->LEN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ROUND:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->INT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MAX:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->DIGIT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->$VALUES:[Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

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
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/Expression$FunctionExpression$Fun;
    .locals 1
    .parameter "name"

    .prologue
    .line 257
    const-class v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    return-object p0
.end method

.method public static values()[Lmiui/app/screenelement/Expression$FunctionExpression$Fun;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->$VALUES:[Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-virtual {v0}, [Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    return-object v0
.end method
