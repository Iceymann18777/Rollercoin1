.class final Lcom/appnext/core/Ad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fG:Lcom/appnext/core/Ad;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/appnext/core/Ad$2;->fG:Lcom/appnext/core/Ad;

    iput-object p2, p0, Lcom/appnext/core/Ad$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 77
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_f

    .line 78
    iget-object v0, p0, Lcom/appnext/core/Ad$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    .line 82
    :catchall_f
    :cond_f
    iget-object v0, p0, Lcom/appnext/core/Ad$2;->fG:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/Ad$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V

    return-void
.end method
