.class final Lcom/appnext/core/Ad$1;
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

    .line 65
    iput-object p1, p0, Lcom/appnext/core/Ad$1;->fG:Lcom/appnext/core/Ad;

    iput-object p2, p0, Lcom/appnext/core/Ad$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/appnext/core/Ad$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/f;->m(Landroid/content/Context;)V

    return-void
.end method
