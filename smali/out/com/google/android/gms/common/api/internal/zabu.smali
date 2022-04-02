.class final synthetic Lcom/google/android/gms/common/api/internal/zabu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final zaa:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method
