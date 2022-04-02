.class Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$2;
.super Ljava/lang/Object;
.source "CycledLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scheduleScanCycleStop()V
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

    .line 370
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$2;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 374
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$2;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scheduleScanCycleStop()V

    return-void
.end method
