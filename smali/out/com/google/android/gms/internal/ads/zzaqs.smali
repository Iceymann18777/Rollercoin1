.class final Lcom/google/android/gms/internal/ads/zzaqs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic zzdbl:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzdbl:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzdbl:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
