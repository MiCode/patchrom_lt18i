.class public final Lmiui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SpectrumVisualizer:[I = null

.field public static final SpectrumVisualizer_alpha_width:I = 0x4

.field public static final SpectrumVisualizer_care_streamactive:I = 0x6

.field public static final SpectrumVisualizer_sliding_dot_bar:I = 0x1

.field public static final SpectrumVisualizer_sliding_panel:I = 0x3

.field public static final SpectrumVisualizer_sliding_shadow_dot_bar:I = 0x2

.field public static final SpectrumVisualizer_symmetry:I = 0x0

.field public static final SpectrumVisualizer_update_enable:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/R$styleable;->SpectrumVisualizer:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x6t
        0x1t 0x0t 0x1t 0x6t
        0x2t 0x0t 0x1t 0x6t
        0x3t 0x0t 0x1t 0x6t
        0x4t 0x0t 0x1t 0x6t
        0x5t 0x0t 0x1t 0x6t
        0x6t 0x0t 0x1t 0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
