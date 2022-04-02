.class Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;
.super Ljava/lang/Object;
.source "CycledLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CycledLeScanner"

    const-string v2, "Quitting scan thread"

    .line 272
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
