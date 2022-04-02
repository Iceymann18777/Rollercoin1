.class public final Lcom/google/android/gms/internal/ads/zzuq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->mContext:Landroid/content/Context;

    return-void
.end method
