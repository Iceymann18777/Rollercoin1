.class final Lcom/google/android/gms/internal/ads/zzakl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoi;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcrs:Ljava/util/List;

.field private final synthetic zzcrt:Lcom/google/android/gms/internal/ads/zzoh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzoh;Landroid/content/Context;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzcrs:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzcrt:Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzjp()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzcrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Pinging url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_23
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_29
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzcrt:Lcom/google/android/gms/internal/ads/zzoh;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzoh;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    goto :goto_6

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzcrt:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzoh;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzjq()V
    .registers 1

    return-void
.end method
