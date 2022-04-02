.class final Lcom/google/android/gms/internal/base/zah;
.super Landroid/graphics/drawable/Drawable;
.source "com.google.android.gms:play-services-base@@17.3.0"


# static fields
.field private static final zaa:Lcom/google/android/gms/internal/base/zah;

.field private static final zab:Lcom/google/android/gms/internal/base/zag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/base/zah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/base/zah;->zaa:Lcom/google/android/gms/internal/base/zah;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/base/zag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zag;-><init>(Lcom/google/android/gms/internal/base/zae;)V

    sput-object v0, Lcom/google/android/gms/internal/base/zah;->zab:Lcom/google/android/gms/internal/base/zag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zaa()Lcom/google/android/gms/internal/base/zah;
    .registers 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/base/zah;->zaa:Lcom/google/android/gms/internal/base/zah;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/base/zah;->zab:Lcom/google/android/gms/internal/base/zag;

    return-object v0
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
