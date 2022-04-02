.class final Lcom/google/android/gms/common/internal/zac;
.super Lcom/google/android/gms/common/internal/zad;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field private final synthetic zaa:Landroid/content/Intent;

.field private final synthetic zab:Landroid/app/Activity;

.field private final synthetic zac:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zac;->zaa:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zac;->zab:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/zac;->zac:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zad;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zac;->zaa:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zac;->zab:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/internal/zac;->zac:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
