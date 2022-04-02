.class public final Landroidx/palette/graphics/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final DARK_MUTED:Landroidx/palette/graphics/Target;

.field public static final DARK_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final LIGHT_MUTED:Landroidx/palette/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final MUTED:Landroidx/palette/graphics/Target;

.field public static final VIBRANT:Landroidx/palette/graphics/Target;


# instance fields
.field mIsExclusive:Z

.field final mLightnessTargets:[F

.field final mSaturationTargets:[F

.field final mWeights:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 91
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 92
    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    .line 94
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    .line 95
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 96
    sget-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    .line 98
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    .line 99
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 100
    sget-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V

    .line 102
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 103
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 104
    sget-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    .line 106
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    .line 107
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 108
    sget-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    .line 110
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    .line 111
    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V

    .line 112
    sget-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 115
    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    .line 116
    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    .line 117
    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    .line 121
    invoke-static {v1}, Landroidx/palette/graphics/Target;->setTargetDefaultValues([F)V

    .line 122
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    invoke-static {v0}, Landroidx/palette/graphics/Target;->setTargetDefaultValues([F)V

    .line 123
    invoke-direct {p0}, Landroidx/palette/graphics/Target;->setDefaultWeights()V

    return-void
.end method

.method private static setDefaultDarkLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    .line 258
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x1

    const v1, 0x3e851eb8    # 0.26f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ee66666    # 0.45f

    .line 259
    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultLightLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    .line 269
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x0

    const v1, 0x3f0ccccd    # 0.55f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v1, 0x3f3d70a4    # 0.74f

    .line 270
    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultMutedSaturationValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    .line 279
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x1

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ecccccd    # 0.4f

    .line 280
    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultNormalLightnessValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    .line 263
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 264
    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f333333    # 0.7f

    .line 265
    aput v1, p0, v0

    return-void
.end method

.method private static setDefaultVibrantSaturationValues(Landroidx/palette/graphics/Target;)V
    .registers 3

    .line 274
    iget-object p0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 275
    aput v1, p0, v0

    return-void
.end method

.method private setDefaultWeights()V
    .registers 5

    .line 235
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    const v2, 0x3e75c28f    # 0.24f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v3, 0x3f051eb8    # 0.52f

    .line 236
    aput v3, v0, v1

    const/4 v1, 0x2

    .line 237
    aput v2, v0, v1

    return-void
.end method

.method private static setTargetDefaultValues([F)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 230
    aput v1, p0, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 231
    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public getLightnessWeight()F
    .registers 3

    .line 205
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumLightness()F
    .registers 3

    .line 179
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMaximumSaturation()F
    .registers 3

    .line 155
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumLightness()F
    .registers 3

    .line 163
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinimumSaturation()F
    .registers 3

    .line 139
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPopulationWeight()F
    .registers 3

    .line 216
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getSaturationWeight()F
    .registers 3

    .line 192
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTargetLightness()F
    .registers 3

    .line 171
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTargetSaturation()F
    .registers 3

    .line 147
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    return v0
.end method

.method normalizeWeights()V
    .registers 8

    .line 242
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v0, :cond_15

    .line 243
    iget-object v5, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v2

    if-lez v6, :cond_12

    add-float/2addr v4, v5

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    cmpl-float v0, v4, v2

    if-eqz v0, :cond_2e

    .line 249
    iget-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v0, v0

    :goto_1c
    if-ge v1, v0, :cond_2e

    .line 250
    iget-object v3, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v5, v3, v1

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2b

    .line 251
    aget v5, v3, v1

    div-float/2addr v5, v4

    aput v5, v3, v1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2e
    return-void
.end method