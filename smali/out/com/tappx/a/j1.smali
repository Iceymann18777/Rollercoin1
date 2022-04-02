.class public Lcom/tappx/a/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/j1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/j1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/j1;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/tappx/a/j1;->c:I

    .line 5
    iput-wide p4, p0, Lcom/tappx/a/j1;->d:J

    return-void
.end method
