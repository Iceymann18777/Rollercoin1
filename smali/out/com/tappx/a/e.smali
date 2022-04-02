.class public Lcom/tappx/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tappx/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tappx/a/e;

    invoke-direct {v0}, Lcom/tappx/a/e;-><init>()V

    sput-object v0, Lcom/tappx/a/e;->a:Lcom/tappx/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()J
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/e;->a:Lcom/tappx/a/e;

    invoke-virtual {v0}, Lcom/tappx/a/e;->a()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
