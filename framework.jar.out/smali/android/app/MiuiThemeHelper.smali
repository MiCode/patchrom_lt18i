.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final TAG:Ljava/lang/String; = "IconHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    .line 97
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "srcConfig"
    .parameter "desConfig"

    .prologue
    .line 101
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 102
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "info"
    .parameter "customized"

    .prologue
    .line 90
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "pm"
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"
    .parameter "activityName"

    .prologue
    .line 54
    invoke-static {p1, p4}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, fileName:Ljava/lang/String;
    new-instance v4, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;

    invoke-direct {v4, v3, p2}, Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 58
    .local v4, name:Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;
    invoke-static {v4}, Landroid/app/ContextImpl$ApplicationPackageManager;->getCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 85
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 63
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->isExclude(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 83
    invoke-static {v4, v1}, Landroid/app/ContextImpl$ApplicationPackageManager;->putCachedIcon(Landroid/app/ContextImpl$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move-object v2, v1

    .line 85
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 66
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    const-string v5, "IconHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generate customized icon for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 76
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static handleExtraConfigurationChanges(I)V
    .locals 1
    .parameter "changes"

    .prologue
    .line 105
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 107
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 109
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "changes"
    .parameter "config"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 113
    const/high16 v2, -0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v2, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 115
    .local v0, flag:J
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->addNeedRestartActivity(J)V

    .line 116
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 117
    invoke-static {v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartStatusBar(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    .end local v0           #flag:J
    :cond_0
    return-void
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .parameter "appFlags"

    .prologue
    .line 212
    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 4
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    .line 41
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 43
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 48
    .end local v0           #i:I
    :goto_1
    return v1

    .line 42
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 48
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .parameter "packageName"
    .parameter "changes"
    .parameter "config"

    .prologue
    .line 124
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 125
    invoke-static {p0}, Lmiui/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lmiui/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .parameter "value"

    .prologue
    .line 134
    const/4 v3, -0x4

    .line 135
    .local v3, intPos:I
    const/4 v0, -0x3

    .line 136
    .local v0, dotPos:I
    const/4 v1, -0x2

    .line 137
    .local v1, fractionPos:I
    const/4 v5, -0x1

    .line 138
    .local v5, unitPos:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #intPos:I
    .local v4, intPos:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .end local v1           #fractionPos:I
    .local v2, fractionPos:I
    move v1, v0

    .end local v0           #dotPos:I
    .local v1, dotPos:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 139
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, c:C
    const/4 v6, -0x4

    if-ne v4, v6, :cond_0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-gt v0, v6, :cond_0

    .line 141
    move v4, v3

    .line 143
    :cond_0
    const/4 v6, -0x3

    if-ne v1, v6, :cond_1

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_1

    .line 144
    move v1, v3

    .line 146
    :cond_1
    const/4 v6, -0x3

    if-eq v1, v6, :cond_2

    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 147
    move v2, v3

    .line 149
    :cond_2
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const/16 v6, 0x61

    if-lt v0, v6, :cond_4

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_4

    .line 150
    move v0, v3

    .end local v5           #unitPos:I
    .local v0, unitPos:I
    move v5, v0

    .end local v0           #unitPos:I
    .restart local v5       #unitPos:I
    move v3, v2

    .end local v2           #fractionPos:I
    .local v3, fractionPos:I
    move v0, v1

    .end local v1           #dotPos:I
    .local v0, dotPos:I
    move v1, v4

    .line 154
    .end local v4           #intPos:I
    .local v1, intPos:I
    :goto_1
    const/4 v1, 0x0

    .line 155
    .local v1, f:F
    const/4 v2, 0x0

    .line 156
    .local v2, fraction:I
    const/4 v6, 0x0

    .line 157
    .local v6, unitType:I
    const/4 v4, 0x0

    .line 159
    .local v4, mantissaShift:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_f

    if-ge v0, v3, :cond_f

    if-ge v3, v5, :cond_f

    .line 161
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    const/4 v7, -0x3

    if-eq v0, v7, :cond_3

    const/4 v0, -0x2

    if-eq v3, v0, :cond_3

    .line 167
    .end local v0           #dotPos:I
    :try_start_1
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v0

    .line 172
    .end local v0           #fraction:I
    .restart local v2       #fraction:I
    :cond_3
    const/16 v0, 0x100

    if-ge v2, v0, :cond_5

    .line 173
    const/high16 v0, 0x4380

    mul-float/2addr v0, v1

    .end local v1           #f:F
    .local v0, f:F
    move v1, v4

    .line 184
    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 185
    .local p0, unit:Ljava/lang/String;
    const-string v3, "px"

    .end local v3           #fractionPos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 186
    const/4 p0, 0x0

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .line 201
    .end local p0           #unitType:I
    .local v3, unitType:I
    :goto_3
    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 202
    .local p0, complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    and-int/lit16 p0, p0, -0x100

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 203
    .restart local p0       #complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    shl-int/lit8 v4, v1, 0x4

    or-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 204
    .restart local p0       #complex:Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #complex:Ljava/lang/Integer;
    or-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .restart local p0       #complex:Ljava/lang/Integer;
    move v8, v3

    .end local v3           #unitType:I
    .local v8, unitType:I
    move-object v3, p0

    move p0, v0

    .end local v0           #f:F
    .local p0, f:F
    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v8

    .line 208
    .end local v8           #unitType:I
    .local v2, unitType:I
    :goto_4
    return-object v3

    .line 138
    .local v0, c:C
    .local v1, dotPos:I
    .local v2, fractionPos:I
    .local v3, i:I
    .local v4, intPos:I
    .local p0, value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    goto/16 :goto_0

    .line 162
    .local v0, dotPos:I
    .local v1, f:F
    .local v2, fraction:I
    .local v3, fractionPos:I
    .local v4, mantissaShift:I
    .restart local v6       #unitType:I
    :catch_0
    move-exception p0

    .line 163
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_4

    .line 168
    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 169
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .restart local v0       #fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_4

    .line 174
    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_5
    const v0, 0x8000

    if-ge v2, v0, :cond_6

    .line 175
    const/high16 v0, 0x4700

    mul-float/2addr v0, v1

    .line 176
    .end local v1           #f:F
    .local v0, f:F
    const/4 v1, 0x1

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 177
    .end local v0           #f:F
    .local v1, f:F
    .restart local v4       #mantissaShift:I
    :cond_6
    const/high16 v0, 0x4000

    if-ge v2, v0, :cond_7

    .line 178
    const/high16 v0, 0x4e80

    mul-float/2addr v0, v1

    .line 179
    .end local v1           #f:F
    .restart local v0       #f:F
    const/4 v1, 0x2

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 180
    .end local v0           #f:F
    .local v1, f:F
    .restart local v4       #mantissaShift:I
    :cond_7
    const/high16 v0, 0x20

    if-ge v2, v0, :cond_10

    .line 181
    const/high16 v0, 0x4a00

    mul-float/2addr v0, v1

    .line 182
    .end local v1           #f:F
    .restart local v0       #f:F
    const/4 v1, 0x3

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto :goto_2

    .line 187
    .end local v3           #fractionPos:I
    .local p0, unit:Ljava/lang/String;
    :cond_8
    const-string v3, "dp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "dip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 188
    :cond_9
    const/4 p0, 0x1

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .local v3, unitType:I
    goto :goto_3

    .line 189
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "sp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 190
    const/4 p0, 0x2

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto :goto_3

    .line 191
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_b
    const-string v3, "pt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 192
    const/4 p0, 0x3

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 193
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_c
    const-string v3, "in"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 194
    const/4 p0, 0x4

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 195
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    .local p0, unit:Ljava/lang/String;
    :cond_d
    const-string v3, "mm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #unit:Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 196
    const/4 p0, 0x5

    .end local v6           #unitType:I
    .local p0, unitType:I
    move v3, p0

    .end local p0           #unitType:I
    .restart local v3       #unitType:I
    goto/16 :goto_3

    .line 198
    .end local v3           #unitType:I
    .restart local v6       #unitType:I
    :cond_e
    const/4 p0, 0x0

    move-object v3, p0

    move p0, v0

    .end local v0           #f:F
    .local p0, f:F
    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    goto :goto_4

    .line 206
    .local v0, dotPos:I
    .local v1, f:F
    .local v2, fraction:I
    .local v3, fractionPos:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_f
    const/4 p0, 0x0

    move v0, v2

    .end local v2           #fraction:I
    .local v0, fraction:I
    move-object v3, p0

    move p0, v1

    .end local v1           #f:F
    .local p0, f:F
    move v2, v6

    .end local v6           #unitType:I
    .local v2, unitType:I
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto/16 :goto_4

    .end local v0           #fraction:I
    .local v1, f:F
    .local v2, fraction:I
    .restart local v4       #mantissaShift:I
    .restart local v6       #unitType:I
    .local p0, value:Ljava/lang/String;
    :cond_10
    move v0, v1

    .end local v1           #f:F
    .local v0, f:F
    move v1, v4

    .end local v4           #mantissaShift:I
    .local v1, mantissaShift:I
    goto/16 :goto_2

    .end local v0           #f:F
    .end local v6           #unitType:I
    .local v1, dotPos:I
    .local v2, fractionPos:I
    .local v3, i:I
    .local v4, intPos:I
    :cond_11
    move v3, v2

    .end local v2           #fractionPos:I
    .local v3, fractionPos:I
    move v0, v1

    .end local v1           #dotPos:I
    .local v0, dotPos:I
    move v1, v4

    .end local v4           #intPos:I
    .local v1, intPos:I
    goto/16 :goto_1
.end method
