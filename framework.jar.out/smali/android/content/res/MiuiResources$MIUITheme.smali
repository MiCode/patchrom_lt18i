.class public final Landroid/content/res/MiuiResources$MIUITheme;
.super Landroid/content/res/Resources$Theme;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MIUITheme"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/MiuiResources;


# direct methods
.method public constructor <init>(Landroid/content/res/MiuiResources;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 3
    .parameter "resid"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    #calls: Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;
    invoke-static {v1, p1}, Landroid/content/res/MiuiResources;->access$000(Landroid/content/res/MiuiResources;I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    .line 89
    .local v0, themeResources:Lmiui/content/res/ThemeResources;
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    #calls: Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;
    invoke-static {v1, v2, v0}, Landroid/content/res/MiuiResources;->access$100(Landroid/content/res/MiuiResources;Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 3
    .parameter "set"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 94
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    #calls: Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;
    invoke-static {v1, p4}, Landroid/content/res/MiuiResources;->access$000(Landroid/content/res/MiuiResources;I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    .line 95
    .local v0, themeResources:Lmiui/content/res/ThemeResources;
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    #calls: Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;
    invoke-static {v1, v2, v0}, Landroid/content/res/MiuiResources;->access$100(Landroid/content/res/MiuiResources;Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 3
    .parameter "attrs"

    .prologue
    .line 82
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    const/4 v2, 0x0

    #calls: Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;
    invoke-static {v1, v2}, Landroid/content/res/MiuiResources;->access$000(Landroid/content/res/MiuiResources;I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    .line 83
    .local v0, themeResources:Lmiui/content/res/ThemeResources;
    iget-object v1, p0, Landroid/content/res/MiuiResources$MIUITheme;->this$0:Landroid/content/res/MiuiResources;

    invoke-super {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    #calls: Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;
    invoke-static {v1, v2, v0}, Landroid/content/res/MiuiResources;->access$100(Landroid/content/res/MiuiResources;Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method
