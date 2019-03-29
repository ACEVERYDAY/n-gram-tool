.class public Lcom/upay/billing/MtContext;
.super Ljava/lang/Object;


# instance fields
.field public actions:Ljava/util/ArrayList;

.field public cmd:Lcom/upay/billing/bean/Cmd;

.field public createTime:J

.field public delete:Z

.field public moMsg:Ljava/lang/String;

.field public mtNum:Ljava/util/regex/Pattern;

.field public serialNo:Ljava/lang/String;

.field public trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method public constructor <init>(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    iput-object p2, p0, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p7, p0, Lcom/upay/billing/MtContext;->actions:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/upay/billing/MtContext;->delete:Z

    invoke-static {p6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/MtContext;->mtNum:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upay/billing/MtContext;->createTime:J

    return-void
.end method
