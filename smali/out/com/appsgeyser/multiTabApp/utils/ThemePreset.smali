.class public final enum Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
.super Ljava/lang/Enum;
.source "ThemePreset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BLACK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field private static final themeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
            ">;"
        }
    .end annotation
.end field

.field private static final themeMapNoActionBar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final themeColorAccentId:I

.field public final themeColorPrimaryDarkId:I

.field public final themeColorPrimaryId:I

.field public final themeId:I

.field public final themeName:Ljava/lang/String;

.field public final themeNoActionBarId:I

.field public final themeNoActionBarName:Ljava/lang/String;

.field public final themeTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 11
    new-instance v11, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f13000a

    const v4, 0x7f13001a

    const-string v5, "AppThemeDefault"

    const-string v6, "AppThemeDefaultNoActionBar"

    const v7, 0x7f12016d

    const v8, 0x7f060047

    const v9, 0x7f060048

    const v10, 0x7f060049

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v11, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 14
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "BLUE"

    const/4 v14, 0x1

    const v15, 0x7f130010

    const v16, 0x7f130011

    const-string v17, "AppThemeBlue"

    const-string v18, "AppThemeBlueNoActionBar"

    const v19, 0x7f12016b

    const v20, 0x7f06002d

    const v21, 0x7f06002e

    const v22, 0x7f06002f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 17
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "RED"

    const/4 v3, 0x2

    const v4, 0x7f130021

    const v5, 0x7f130022

    const-string v6, "AppThemeRed"

    const-string v7, "AppThemeRedNoActionBar"

    const v8, 0x7f120176

    const v9, 0x7f060102

    const v10, 0x7f060103

    const v11, 0x7f060104

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 20
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "PINK"

    const/4 v14, 0x3

    const v15, 0x7f13001d

    const v16, 0x7f13001e

    const-string v17, "AppThemePink"

    const-string v18, "AppThemePinkNoActionBar"

    const v19, 0x7f120172

    const v20, 0x7f0600f4

    const v21, 0x7f0600f5

    const v22, 0x7f0600f6

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 23
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "PURPLE"

    const/4 v3, 0x4

    const v4, 0x7f13001f

    const v5, 0x7f130020

    const-string v6, "AppThemePurple"

    const-string v7, "AppThemePurpleNoActionBar"

    const v8, 0x7f120175

    const v9, 0x7f0600ff

    const v10, 0x7f060100

    const v11, 0x7f060101

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 26
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "INDIGO"

    const/4 v14, 0x5

    const v15, 0x7f130018

    const v16, 0x7f130019

    const-string v17, "AppThemeIndigo"

    const-string v18, "AppThemeIndigoNoActionBar"

    const v19, 0x7f120170

    const v20, 0x7f060099

    const v21, 0x7f06009a

    const v22, 0x7f06009b

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 29
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "TEAL"

    const/4 v3, 0x6

    const v4, 0x7f130023

    const v5, 0x7f130024

    const-string v6, "AppThemeTeal"

    const-string v7, "AppThemeTealNoActionBar"

    const v8, 0x7f120177

    const v9, 0x7f060114

    const v10, 0x7f060115

    const v11, 0x7f060116

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 32
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "GREEN"

    const/4 v14, 0x7

    const v15, 0x7f130014

    const v16, 0x7f130015

    const-string v17, "AppThemeGreen"

    const-string v18, "AppThemeGreenNoActionBar"

    const v19, 0x7f12016e

    const v20, 0x7f06008e

    const v21, 0x7f06008f

    const v22, 0x7f060090

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 35
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "YELLOW"

    const/16 v3, 0x8

    const v4, 0x7f130025

    const v5, 0x7f130026

    const-string v6, "AppThemeYellow"

    const-string v7, "AppThemeYellowNoActionBar"

    const v8, 0x7f120178

    const v9, 0x7f060127

    const v10, 0x7f060128

    const v11, 0x7f060129

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 38
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "ORANGE"

    const/16 v14, 0x9

    const v15, 0x7f13001b

    const v16, 0x7f13001c

    const-string v17, "AppThemeOrange"

    const-string v18, "AppThemeOrangeNoActionBar"

    const v19, 0x7f120171

    const v20, 0x7f0600f1

    const v21, 0x7f0600f2

    const v22, 0x7f0600f3

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 41
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "BROWN"

    const/16 v3, 0xa

    const v4, 0x7f130012

    const v5, 0x7f130013

    const-string v6, "AppThemeBrown"

    const-string v7, "AppThemeBrownNoActionBar"

    const v8, 0x7f12016c

    const v9, 0x7f060038

    const v10, 0x7f060039

    const v11, 0x7f06003a

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 44
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v13, "GREY"

    const/16 v14, 0xb

    const v15, 0x7f130016

    const v16, 0x7f130017

    const-string v17, "AppThemeGrey"

    const-string v18, "AppThemeGreyNoActionBar"

    const v19, 0x7f12016f

    const v20, 0x7f060091

    const v21, 0x7f060092

    const v22, 0x7f060093

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 47
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const-string v2, "BLACK"

    const/16 v3, 0xc

    const v4, 0x7f13000e

    const v5, 0x7f13000f

    const-string v6, "AppThemeBlack"

    const-string v7, "AppThemeBlackNoActionBar"

    const v8, 0x7f12016a

    const v9, 0x7f060029

    const v10, 0x7f06002a

    const v11, 0x7f06002b

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLACK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 9
    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->$VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_209
    if-ge v2, v1, :cond_217

    aget-object v4, v0, v2

    .line 81
    sget-object v5, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    iget-object v6, v4, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_209

    .line 83
    :cond_217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    array-length v1, v0

    :goto_223
    if-ge v3, v1, :cond_231

    aget-object v2, v0, v3

    .line 85
    sget-object v4, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    iget-object v5, v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_223

    :cond_231
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeId:I

    .line 66
    iput p4, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarId:I

    .line 67
    iput-object p5, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeName:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarName:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeTitleId:I

    .line 70
    iput p8, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorAccentId:I

    .line 71
    iput p9, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryId:I

    .line 72
    iput p10, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryDarkId:I

    return-void
.end method

.method public static findByName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .registers 2

    .line 90
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .registers 2

    .line 94
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .registers 2

    .line 9
    const-class v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .registers 1

    .line 9
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->$VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object v0
.end method
