class EvaluationBase(object):
    """评估基类"""
    get_precision = lambda TP, FN : (TP * 1.0) / (TP + FN)  # 获得准确率
    get_recall = lambda TP, FP : (TP * 1.0) / (TP + FP)  # 获得召回率
    get_F1 = lambda TP, FN, FP: 2 * get_precision(TP, FN) * get_recall(TP, FP) / (get_precision(TP, FN) + get_recall(TP, FP))  # 获得F1 score
    
    TP = 0  # 正确识别拼写错误句子（字）数量
    FN = 0  # 错误纠正不存在拼写错误句子（字）数量
    FP = 0  # 正确识别无拼写错误句子（字）数量
    FN = 0  # 存在拼写错误却没被纠正句子（字）数量
